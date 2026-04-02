from typing import Dict
import uuid

from fastapi import FastAPI, HTTPException, status

from model import RequestModel, ResponseModel, SunlightLevel, WaterLevel

app = FastAPI()


@app.get("/")
def read_root():
    return {"message": "Hello FastAPI 🚀"}


#  Manage data using db variable without database
simulations: Dict[str, ResponseModel] = {}


@app.post("/api/simulations", response_model=ResponseModel)
def create_simulation():
    try:
        sim_id = str(uuid.uuid4())
        state = ResponseModel(
            id=sim_id,
            day=0,
            health=100,
            growth=0,
            water=WaterLevel.MEDIUM,
            sunlight=SunlightLevel.MEDIUM,
            status_msg="Simulation started. Seed planted.",
        )
        simulations[sim_id] = state
        return state

    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to create simulation {e}",
        )


@app.post("/api/simulations/{sim_id}/step", response_model=ResponseModel)
def step_simulation(sim_id: str, step_in: RequestModel):
    try:
        state = simulations.get(sim_id)
        if not state:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail="Simulation not found",
            )

        if state.health <= 0 or state.growth >= 100:
            return state

        water = step_in.water
        sunlight = step_in.sunlight
        healthDelta = 0
        growthDelta = 0
        msg = ""

        if water == WaterLevel.LOW and sunlight == SunlightLevel.HIGH:
            healthDelta = -20
            growthDelta = +2
            msg = "Plant is drying out! Extreme stress."
        elif water == WaterLevel.MEDIUM and sunlight == SunlightLevel.MEDIUM:
            healthDelta = +10
            growthDelta = +15
            msg = "Optimal conditions! Healthy growth."
        elif water == WaterLevel.HIGH and sunlight == SunlightLevel.LOW:
            healthDelta = -20
            growthDelta = +0
            msg = "Soil is waterlogged. Risk of root rot."
        elif water == WaterLevel.LOW and sunlight == SunlightLevel.LOW:
            healthDelta = -10
            growthDelta = +2
            msg = "Lacking resources. Stunted growth."
        elif water == WaterLevel.HIGH and sunlight == SunlightLevel.HIGH:
            healthDelta = -10
            growthDelta = +10
            msg = "Hot and humid! Fast growth but stressful."
        elif water == WaterLevel.HIGH and sunlight == SunlightLevel.MEDIUM:
            healthDelta = -5
            growthDelta = +8
            msg = "A bit too much water."
        elif water == WaterLevel.MEDIUM and sunlight == SunlightLevel.HIGH:
            healthDelta = -5
            growthDelta = +12
            msg = "Very sunny, could use a bit more water."
        elif water == WaterLevel.MEDIUM and sunlight == SunlightLevel.LOW:
            healthDelta = -5
            growthDelta = +5
            msg = "Not enough sun today."
        elif water == WaterLevel.LOW and sunlight == SunlightLevel.MEDIUM:
            healthDelta = -10
            growthDelta = +4
            msg = "Plant needs water urgently."

        newHealth = min(100, max(0, state.health + healthDelta))
        newGrowth = min(100, max(0, state.growth + growthDelta))

        if newHealth <= 0:
            msg = "Plant has died. 🥀"
        elif newGrowth >= 100:
            msg = "Plant is fully grown! Harvest ready. 🌳"

        state.health = newHealth
        state.growth = newGrowth
        state.day += 1
        state.water = water
        state.sunlight = sunlight
        state.status_msg = msg

        simulations[sim_id] = state
        return state

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=f"Failed to process simulation step {e}",
        )
