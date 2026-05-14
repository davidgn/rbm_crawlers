.class public final LJ1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDI)V
    .locals 17

    move/from16 v0, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    const/16 v2, 0x16

    if-gt v0, v2, :cond_7

    invoke-static/range {p1 .. p4}, LI1/a;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    new-array v3, v2, [D

    const-wide v4, -0x3f99800000000000L    # -180.0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide v4, 0x4066800000000000L    # 180.0

    aput-wide v4, v3, v1

    new-array v4, v2, [D

    const-wide v7, -0x3fa9800000000000L    # -90.0

    aput-wide v7, v4, v6

    const-wide v7, 0x4056800000000000L    # 90.0

    aput-wide v7, v4, v1

    new-array v5, v0, [C

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_5

    move v8, v6

    move v9, v8

    :goto_1
    const/4 v10, 0x5

    if-ge v8, v10, :cond_4

    mul-int/lit8 v10, v7, 0x5

    add-int/2addr v10, v8

    rem-int/2addr v10, v2

    if-nez v10, :cond_0

    move v10, v1

    goto :goto_2

    :cond_0
    move v10, v6

    :goto_2
    if-eqz v10, :cond_1

    move-wide/from16 v11, p3

    goto :goto_3

    :cond_1
    move-wide/from16 v11, p1

    :goto_3
    if-eqz v10, :cond_2

    move-object v10, v3

    goto :goto_4

    :cond_2
    move-object v10, v4

    :goto_4
    aget-wide v13, v10, v6

    aget-wide v15, v10, v1

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v9, v1

    aput-wide v13, v10, v6

    goto :goto_5

    :cond_3
    shl-int/lit8 v9, v9, 0x1

    aput-wide v13, v10, v1

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v9}, LL4/l;->F(I)C

    move-result v8

    aput-char v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v1, p0

    iput-object v0, v1, LJ1/a;->a:Ljava/lang/String;

    return-void

    :cond_6
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Not valid location coordinates: [%f, %f]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Precision of a GeoHash must be less than 23!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Precision of GeoHash must be larger than zero!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LJ1/a;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LJ1/a;

    iget-object v0, p0, LJ1/a;->a:Ljava/lang/String;

    iget-object p1, p1, LJ1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LJ1/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoHash{geoHash=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LJ1/a;->a:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
