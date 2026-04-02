from pydantic import BaseModel
from enum import Enum


from typing import Generic, Optional, TypeVar
from pydantic import BaseModel

T = TypeVar("T")


class SuccessResponse(BaseModel, Generic[T]):
    status: bool = True
    message: str
    data: Optional[T] = None


class ErrorResponse(BaseModel):
    status: bool = False
    message: str


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
