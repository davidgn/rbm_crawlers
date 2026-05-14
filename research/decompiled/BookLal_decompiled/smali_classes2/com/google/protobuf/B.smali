.class public final Lcom/google/protobuf/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/L0;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/B;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/B;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/protobuf/L0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/protobuf/L0;-><init>(I)V

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    new-instance p1, Lcom/google/protobuf/L0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/protobuf/L0;-><init>(I)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/B;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/B;->b()V

    return-void
.end method

.method public static a(Lcom/google/protobuf/m1;ILjava/lang/Object;)I
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/protobuf/u;->r0(I)I

    move-result p1

    sget-object v1, Lcom/google/protobuf/m1;->d:Lcom/google/protobuf/j1;

    if-ne p0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    shl-long v3, v1, v0

    const/16 p0, 0x3f

    shr-long v0, v1, p0

    xor-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/protobuf/u;->v0(J)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p2, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    invoke-static {p0}, Lcom/google/protobuf/u;->t0(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    :goto_0
    move v0, v2

    goto/16 :goto_3

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    :goto_1
    move v0, v1

    goto/16 :goto_3

    :pswitch_4
    instance-of p0, p2, Lcom/google/protobuf/S;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/protobuf/S;

    invoke-interface {p2}, Lcom/google/protobuf/S;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/u;->j0(I)I

    move-result v0

    goto/16 :goto_3

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/u;->j0(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/u;->t0(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_6
    instance-of p0, p2, Lcom/google/protobuf/m;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/google/protobuf/m;

    invoke-static {p2}, Lcom/google/protobuf/u;->b0(Lcom/google/protobuf/m;)I

    move-result v0

    goto/16 :goto_3

    :cond_2
    check-cast p2, [B

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    array-length p0, p2

    invoke-static {p0}, Lcom/google/protobuf/u;->t0(I)I

    move-result p2

    :goto_2
    add-int v0, p2, p0

    goto/16 :goto_3

    :pswitch_7
    check-cast p2, Lcom/google/protobuf/t0;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    invoke-interface {p2}, Lcom/google/protobuf/t0;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/u;->t0(I)I

    move-result p2

    goto :goto_2

    :pswitch_8
    check-cast p2, Lcom/google/protobuf/t0;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    invoke-interface {p2}, Lcom/google/protobuf/t0;->getSerializedSize()I

    move-result v0

    goto :goto_3

    :pswitch_9
    instance-of p0, p2, Lcom/google/protobuf/m;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/google/protobuf/m;

    invoke-static {p2}, Lcom/google/protobuf/u;->b0(Lcom/google/protobuf/m;)I

    move-result v0

    goto :goto_3

    :cond_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/protobuf/u;->q0(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    goto :goto_3

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    goto :goto_1

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    goto/16 :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/u;->j0(I)I

    move-result v0

    goto :goto_3

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/u;->v0(J)I

    move-result v0

    goto :goto_3

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/u;->v0(J)I

    move-result v0

    goto :goto_3

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    goto/16 :goto_1

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/u;->d:Ljava/util/logging/Logger;

    goto/16 :goto_0

    :goto_3
    add-int/2addr v0, p1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Lcom/google/protobuf/H;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/H;->b:Lcom/google/protobuf/m1;

    sget-object v1, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/protobuf/m1;->a:Lcom/google/protobuf/n1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of v2, p1, Lcom/google/protobuf/t0;

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/protobuf/S;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    move v2, v1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/protobuf/m;

    if-nez v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_3
    instance-of v2, p1, Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    instance-of v2, p1, Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_5
    instance-of v2, p1, Ljava/lang/Double;

    goto :goto_1

    :pswitch_6
    instance-of v2, p1, Ljava/lang/Float;

    goto :goto_1

    :pswitch_7
    instance-of v2, p1, Ljava/lang/Long;

    goto :goto_1

    :pswitch_8
    instance-of v2, p1, Ljava/lang/Integer;

    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/H;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/google/protobuf/H;->b:Lcom/google/protobuf/m1;

    iget-object p0, p0, Lcom/google/protobuf/m1;->a:Lcom/google/protobuf/n1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/google/protobuf/u;Lcom/google/protobuf/m1;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/protobuf/m1;->d:Lcom/google/protobuf/j1;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/google/protobuf/t0;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/u;->M0(II)V

    invoke-interface {p3, p0}, Lcom/google/protobuf/t0;->writeTo(Lcom/google/protobuf/u;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/u;->M0(II)V

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Lcom/google/protobuf/m1;->b:I

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/u;->M0(II)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->Q0(J)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->O0(I)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->F0(J)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->D0(I)V

    goto/16 :goto_0

    :pswitch_4
    instance-of p1, p3, Lcom/google/protobuf/S;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/protobuf/S;

    invoke-interface {p3}, Lcom/google/protobuf/S;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->H0(I)V

    goto/16 :goto_0

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->H0(I)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->O0(I)V

    goto/16 :goto_0

    :pswitch_6
    instance-of p1, p3, Lcom/google/protobuf/m;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/protobuf/m;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/u;->B0(Lcom/google/protobuf/m;)V

    goto/16 :goto_0

    :cond_2
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/u;->z0(I[B)V

    goto/16 :goto_0

    :pswitch_7
    check-cast p3, Lcom/google/protobuf/t0;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/u;->J0(Lcom/google/protobuf/t0;)V

    goto/16 :goto_0

    :pswitch_8
    check-cast p3, Lcom/google/protobuf/t0;

    invoke-interface {p3, p0}, Lcom/google/protobuf/t0;->writeTo(Lcom/google/protobuf/u;)V

    goto :goto_0

    :pswitch_9
    instance-of p1, p3, Lcom/google/protobuf/m;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/google/protobuf/m;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/u;->B0(Lcom/google/protobuf/m;)V

    goto :goto_0

    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/u;->L0(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->x0(B)V

    goto :goto_0

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->D0(I)V

    goto :goto_0

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->F0(J)V

    goto :goto_0

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->H0(I)V

    goto :goto_0

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->Q0(J)V

    goto :goto_0

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->Q0(J)V

    goto :goto_0

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u;->D0(I)V

    goto :goto_0

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u;->F0(J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/protobuf/B;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    iget-object v3, v2, Lcom/google/protobuf/L0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/google/protobuf/L0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/protobuf/K;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/K;

    invoke-virtual {v2}, Lcom/google/protobuf/K;->makeImmutable()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v2, Lcom/google/protobuf/L0;->d:Z

    if-nez v1, :cond_6

    :goto_1
    iget-object v1, v2, Lcom/google/protobuf/L0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v2, v0}, Lcom/google/protobuf/L0;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/H;

    iget-boolean v3, v3, Lcom/google/protobuf/H;->c:Z

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/L0;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/H;

    iget-boolean v3, v3, Lcom/google/protobuf/H;->c:Z

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-boolean v0, v2, Lcom/google/protobuf/L0;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/google/protobuf/L0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v0, v2, Lcom/google/protobuf/L0;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/protobuf/L0;->c:Ljava/util/Map;

    iget-object v0, v2, Lcom/google/protobuf/L0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v2, Lcom/google/protobuf/L0;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_4
    iput-object v0, v2, Lcom/google/protobuf/L0;->f:Ljava/util/Map;

    iput-boolean v1, v2, Lcom/google/protobuf/L0;->d:Z

    :cond_9
    iput-boolean v1, p0, Lcom/google/protobuf/B;->b:Z

    return-void
.end method

.method public final c(Lcom/google/protobuf/H;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p1, Lcom/google/protobuf/H;->c:Z

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/B;->d(Lcom/google/protobuf/H;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lcom/google/protobuf/B;->d(Lcom/google/protobuf/H;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/L0;->f(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/protobuf/B;

    invoke-direct {v0}, Lcom/google/protobuf/B;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    iget-object v3, v2, Lcom/google/protobuf/L0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/L0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/H;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/B;->c(Lcom/google/protobuf/H;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/L0;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/H;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/B;->c(Lcom/google/protobuf/H;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/B;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/B;

    iget-object v0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    iget-object p1, p1, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/L0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v0}, Lcom/google/protobuf/L0;->hashCode()I

    move-result v0

    return v0
.end method
