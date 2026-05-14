.class public final LW2/H0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final ARRAY_VALUE_FIELD_NUMBER:I = 0x9

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:LW2/H0;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final GEO_POINT_VALUE_FIELD_NUMBER:I = 0x8

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final REFERENCE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x11

.field public static final TIMESTAMP_VALUE_FIELD_NUMBER:I = 0xa


# instance fields
.field private valueTypeCase_:I

.field private valueType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/H0;

    invoke-direct {v0}, LW2/H0;-><init>()V

    sput-object v0, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    const-class v1, LW2/H0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static A()LW2/F0;
    .locals 1

    sget-object v0, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/F0;

    return-object v0
.end method

.method public static f(LW2/H0;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static g(LW2/H0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x11

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static h(LW2/H0;Lcom/google/protobuf/m;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x12

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static i(LW2/H0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static j(LW2/H0;Lb3/d;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static k(LW2/e;LW2/H0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, LW2/H0;->valueType_:Ljava/lang/Object;

    const/16 p0, 0x9

    iput p0, p1, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static l(LW2/H0;LW2/I;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static m(LW2/H0;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/A0;->b:Lcom/google/protobuf/A0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/protobuf/A0;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    return-void
.end method

.method public static n(LW2/H0;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static o(LW2/H0;J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static p(LW2/H0;D)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LW2/H0;->valueTypeCase_:I

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static t()LW2/H0;
    .locals 1

    sget-object v0, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/H0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/H0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/H0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/H0;->PARSER:Lcom/google/protobuf/B0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/F0;

    sget-object p2, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/H0;

    invoke-direct {p1}, LW2/H0;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "valueType_"

    const-string v1, "valueTypeCase_"

    const-class v2, LW2/I;

    const-class v3, Lb3/d;

    const-class v4, LW2/e;

    const-class v5, Lcom/google/protobuf/T0;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005\u023b\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011\u023b\u0000\u0012=\u0000"

    sget-object p3, LW2/H0;->DEFAULT_INSTANCE:LW2/H0;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/K;->newMessageInfo(Lcom/google/protobuf/t0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDoubleValue()D
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final q()LW2/e;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, LW2/e;

    return-object v0

    :cond_0
    invoke-static {}, LW2/e;->i()LW2/e;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Lcom/google/protobuf/m;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/m;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    return-object v0
.end method

.method public final u()Lb3/d;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Lb3/d;

    return-object v0

    :cond_0
    invoke-static {}, Lb3/d;->h()Lb3/d;

    move-result-object v0

    return-object v0
.end method

.method public final v()J
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final w()LW2/I;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, LW2/I;

    return-object v0

    :cond_0
    invoke-static {}, LW2/I;->g()LW2/I;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final y()Lcom/google/protobuf/T0;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/H0;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/T0;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    return-object v0
.end method

.method public final z()LW2/G0;
    .locals 2

    iget v0, p0, LW2/H0;->valueTypeCase_:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v0, LW2/G0;->a:LW2/G0;

    goto :goto_0

    :pswitch_1
    sget-object v0, LW2/G0;->e:LW2/G0;

    goto :goto_0

    :pswitch_2
    sget-object v0, LW2/G0;->o:LW2/G0;

    goto :goto_0

    :pswitch_3
    sget-object v0, LW2/G0;->n:LW2/G0;

    goto :goto_0

    :cond_0
    sget-object v0, LW2/G0;->l:LW2/G0;

    goto :goto_0

    :cond_1
    sget-object v0, LW2/G0;->f:LW2/G0;

    goto :goto_0

    :cond_2
    sget-object v0, LW2/G0;->p:LW2/G0;

    goto :goto_0

    :cond_3
    sget-object v0, LW2/G0;->m:LW2/G0;

    goto :goto_0

    :cond_4
    sget-object v0, LW2/G0;->d:LW2/G0;

    goto :goto_0

    :cond_5
    sget-object v0, LW2/G0;->c:LW2/G0;

    goto :goto_0

    :cond_6
    sget-object v0, LW2/G0;->b:LW2/G0;

    goto :goto_0

    :cond_7
    sget-object v0, LW2/G0;->q:LW2/G0;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
