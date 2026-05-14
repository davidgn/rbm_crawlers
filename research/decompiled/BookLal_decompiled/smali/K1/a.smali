.class public abstract LK1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GeoFire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public static a(DDDD)D
    .locals 4

    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p4, p0

    div-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x41684abea999999aL    # 1.27359893E7

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static b(DD)D
    .locals 6

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x3f7b6bab4ec953acL    # 0.00669447819799

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p2, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double p2, v2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    div-double/2addr v2, p2

    mul-double/2addr v2, v0

    const-wide p2, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double p2, v2, p2

    const-wide v0, 0x4076800000000000L    # 360.0

    if-gez p2, :cond_1

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0

    :cond_1
    div-double/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(D)D
    .locals 5

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p0, v0

    const-wide v1, 0x4066800000000000L    # 180.0

    if-ltz v0, :cond_0

    cmpg-double v0, p0, v1

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    add-double/2addr p0, v1

    const-wide/16 v3, 0x0

    cmpl-double v0, p0, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    if-lez v0, :cond_1

    rem-double/2addr p0, v3

    sub-double/2addr p0, v1

    return-wide p0

    :cond_1
    neg-double p0, p0

    rem-double/2addr p0, v3

    sub-double/2addr v1, p0

    return-wide v1
.end method
