.class public final LW2/s0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/s0;

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private op_:I

.field private operandTypeCase_:I

.field private operandType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/s0;

    invoke-direct {v0}, LW2/s0;-><init>()V

    sput-object v0, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    const-class v1, LW2/s0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/s0;->operandTypeCase_:I

    return-void
.end method

.method public static f(LW2/s0;LW2/r0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LW2/r0;->getNumber()I

    move-result p1

    iput p1, p0, LW2/s0;->op_:I

    return-void
.end method

.method public static g(LW2/s0;LW2/j0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/s0;->operandType_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LW2/s0;->operandTypeCase_:I

    return-void
.end method

.method public static h()LW2/s0;
    .locals 1

    sget-object v0, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    return-object v0
.end method

.method public static k()LW2/q0;
    .locals 1

    sget-object v0, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/q0;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/s0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/s0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/s0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/s0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/q0;

    sget-object p2, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/s0;

    invoke-direct {p1}, LW2/s0;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "operandType_"

    const-string p2, "operandTypeCase_"

    const-string p3, "op_"

    const-class v0, LW2/j0;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002<\u0000"

    sget-object p3, LW2/s0;->DEFAULT_INSTANCE:LW2/s0;

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

.method public final i()LW2/j0;
    .locals 2

    iget v0, p0, LW2/s0;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/s0;->operandType_:Ljava/lang/Object;

    check-cast v0, LW2/j0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/j0;->g()LW2/j0;

    move-result-object v0

    return-object v0
.end method

.method public final j()LW2/r0;
    .locals 2

    iget v0, p0, LW2/s0;->op_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, LW2/r0;->f:LW2/r0;

    goto :goto_0

    :cond_1
    sget-object v0, LW2/r0;->e:LW2/r0;

    goto :goto_0

    :cond_2
    sget-object v0, LW2/r0;->d:LW2/r0;

    goto :goto_0

    :cond_3
    sget-object v0, LW2/r0;->c:LW2/r0;

    goto :goto_0

    :cond_4
    sget-object v0, LW2/r0;->b:LW2/r0;

    :goto_0
    if-nez v0, :cond_5

    sget-object v0, LW2/r0;->l:LW2/r0;

    :cond_5
    return-object v0
.end method
