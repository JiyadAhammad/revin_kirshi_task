from pydantic import BaseModel
from enum import Enum


class WaterLevel(str, Enum):
    LOW = "Low"
    MEDIUM = "Medium"
    HIGH = "High"


class SunlightLevel(str, Enum):
    LOW = "Low"
    MEDIUM = "Medium"
    HIGH = "High"


class ResponseModel(BaseModel):
    id: str
    day: int
    health: int
    growth: int
    water: WaterLevel
    sunlight: SunlightLevel
    status_msg: str


class RequestModel(BaseModel):
    water: WaterLevel
    sunlight: SunlightLevel
