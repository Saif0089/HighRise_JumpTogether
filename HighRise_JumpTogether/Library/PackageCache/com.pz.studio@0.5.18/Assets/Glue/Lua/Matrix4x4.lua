--!AddComponentMenu("")

-- Matrix4x4
type Matrix4x4 =
{
    m00: number,
    m10: number,
    m20: number,
    m30: number,
    m01: number,
    m11: number,
    m21: number,
    m31: number,
    m02: number,
    m12: number,
    m22: number,
    m32: number,
    m03: number,
    m13: number,
    m23: number,
    m33: number,
    rotation: Quaternion,
    lossyScale: Vector3,
    isIdentity: boolean,
    determinant: number,
    inverse: Matrix4x4,
    transpose: Matrix4x4,
    ValidTRS: () -> boolean,
    SetTRS: (_pos: Vector3, _q: Quaternion, _s: Vector3) -> void,
    GetColumn: (_index: number) -> Vector4,
    GetRow: (_index: number) -> Vector4,
    GetPosition: () -> Vector3,
    SetColumn: (_index: number, _column: Vector4) -> void,
    SetRow: (_index: number, _row: Vector4) -> void,
    MultiplyPoint: (_point: Vector3) -> Vector3,
    MultiplyPoint3x4: (_point: Vector3) -> Vector3,
    MultiplyVector: (_vector: Vector3) -> Vector3,
    TransformPlane: (_plane: Plane) -> Plane,

}

-- Matrix4x4Type
type Matrix4x4Type =
{
    Determinant: (_m: Matrix4x4) -> number,
    TRS: (_pos: Vector3, _q: Quaternion, _s: Vector3) -> Matrix4x4,
    Inverse: (_m: Matrix4x4) -> Matrix4x4,
    Transpose: (_m: Matrix4x4) -> Matrix4x4,
    Ortho: (_left: number, _right: number, _bottom: number, _top: number, _zNear: number, _zFar: number) -> Matrix4x4,
    Perspective: (_fov: number, _aspect: number, _zNear: number, _zFar: number) -> Matrix4x4,
    LookAt: (_from: Vector3, _to: Vector3, _up: Vector3) -> Matrix4x4,
    Frustum: (_left: number, _right: number, _bottom: number, _top: number, _zNear: number, _zFar: number) -> Matrix4x4,
    Scale: (_vector: Vector3) -> Matrix4x4,
    Translate: (_vector: Vector3) -> Matrix4x4,
    Rotate: (_q: Quaternion) -> Matrix4x4,
    new: (_column0: Vector4, _column1: Vector4, _column2: Vector4, _column3: Vector4) -> Matrix4x4,

}

if not _G.Matrix4x4 then
	local Matrix4x4Type_instance : Matrix4x4Type = { }
	_G.Matrix4x4 = Matrix4x4Type_instance;
end
