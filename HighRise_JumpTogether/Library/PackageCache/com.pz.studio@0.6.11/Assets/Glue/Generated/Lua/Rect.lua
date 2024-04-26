--!AddComponentMenu("")

-- Rect
type Rect =
{
    x: number,
    y: number,
    position: Vector2,
    center: Vector2,
    min: Vector2,
    max: Vector2,
    width: number,
    height: number,
    size: Vector2,
    xMin: number,
    yMin: number,
    xMax: number,
    yMax: number,
    Set: (_x: number, _y: number, _width: number, _height: number) -> void,
    Contains: (_point: Vector2) -> boolean,
    Overlaps: (_other: Rect) -> boolean,

}

-- RectType
type RectType =
{
    MinMaxRect: (_xmin: number, _ymin: number, _xmax: number, _ymax: number) -> Rect,
    NormalizedToPoint: (_rectangle: Rect, _normalizedRectCoordinates: Vector2) -> Vector2,
    PointToNormalized: (_rectangle: Rect, _point: Vector2) -> Vector2,
    new: (_x: number, _y: number, _width: number, _height: number) -> Rect,

}

if not _G.Rect then
	local RectType_instance : RectType = { }
	_G.Rect = RectType_instance;
end
