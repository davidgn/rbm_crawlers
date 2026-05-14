.class public final LW2/m0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final COMPOSITE_FILTER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LW2/m0;

.field public static final FIELD_FILTER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final UNARY_FILTER_FIELD_NUMBER:I = 0x3


# instance fields
.field private filterTypeCase_:I

.field private filterType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/m0;

    invoke-direct {v0}, LW2/m0;-><init>()V

    sput-object v0, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    const-class v1, LW2/m0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/m0;->filterTypeCase_:I

    return-void
.end method

.method public static f(LW2/m0;LW2/h0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LW2/m0;->filterTypeCase_:I

    return-void
.end method

.method public static g(LW2/m0;LW2/s0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, LW2/m0;->filterTypeCase_:I

    return-void
.end method

.method public static h(LW2/m0;LW2/d0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, LW2/m0;->filterTypeCase_:I

    return-void
.end method

.method public static j()LW2/m0;
    .locals 1

    sget-object v0, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    return-object v0
.end method

.method public static n()LW2/k0;
    .locals 1

    sget-object v0, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/k0;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/m0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/m0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/m0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/m0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/k0;

    sget-object p2, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/m0;

    invoke-direct {p1}, LW2/m0;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "filterType_"

    const-string p2, "filterTypeCase_"

    const-class p3, LW2/d0;

    const-class v0, LW2/h0;

    const-class v1, LW2/s0;

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    sget-object p3, LW2/m0;->DEFAULT_INSTANCE:LW2/m0;

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

.method public final i()LW2/d0;
    .locals 2

    iget v0, p0, LW2/m0;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    check-cast v0, LW2/d0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/d0;->h()LW2/d0;

    move-result-object v0

    return-object v0
.end method

.method public final k()LW2/h0;
    .locals 2

    iget v0, p0, LW2/m0;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    check-cast v0, LW2/h0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/h0;->i()LW2/h0;

    move-result-object v0

    return-object v0
.end method

.method public final l()LW2/l0;
    .locals 2

    iget v0, p0, LW2/m0;->filterTypeCase_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, LW2/l0;->c:LW2/l0;

    goto :goto_0

    :cond_1
    sget-object v0, LW2/l0;->b:LW2/l0;

    goto :goto_0

    :cond_2
    sget-object v0, LW2/l0;->a:LW2/l0;

    goto :goto_0

    :cond_3
    sget-object v0, LW2/l0;->d:LW2/l0;

    :goto_0
    return-object v0
.end method

.method public final m()LW2/s0;
    .locals 2

    iget v0, p0, LW2/m0;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/m0;->filterType_:Ljava/lang/Object;

    check-cast v0, LW2/s0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/s0;->h()LW2/s0;

    move-result-object v0

    return-object v0
.end method
