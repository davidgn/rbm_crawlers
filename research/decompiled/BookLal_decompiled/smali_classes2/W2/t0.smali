.class public final LW2/t0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/t0;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field private endAt_:LW2/n;

.field private from_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field

.field private limit_:Lcom/google/protobuf/M;

.field private offset_:I

.field private orderBy_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field

.field private select_:LW2/p0;

.field private startAt_:LW2/n;

.field private where_:LW2/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/t0;

    invoke-direct {v0}, LW2/t0;-><init>()V

    sput-object v0, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    const-class v1, LW2/t0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    return-void
.end method

.method public static f(LW2/t0;LW2/a0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/d;

    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/K;->mutableCopy(Lcom/google/protobuf/Y;)Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    :cond_0
    iget-object p0, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static g(LW2/t0;LW2/m0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/t0;->where_:LW2/m0;

    return-void
.end method

.method public static h(LW2/t0;LW2/o0;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/d;

    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/K;->mutableCopy(Lcom/google/protobuf/Y;)Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    :cond_0
    iget-object p0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static i(LW2/t0;LW2/n;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/t0;->startAt_:LW2/n;

    return-void
.end method

.method public static j(LW2/t0;LW2/n;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/t0;->endAt_:LW2/n;

    return-void
.end method

.method public static k(LW2/t0;Lcom/google/protobuf/M;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/t0;->limit_:Lcom/google/protobuf/M;

    return-void
.end method

.method public static l()LW2/t0;
    .locals 1

    sget-object v0, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    return-object v0
.end method

.method public static y()LW2/Y;
    .locals 1

    sget-object v0, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/Y;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/t0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/t0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/t0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/t0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/Y;

    sget-object p2, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/t0;

    invoke-direct {p1}, LW2/t0;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "select_"

    const-string v1, "from_"

    const-class v2, LW2/a0;

    const-string v3, "where_"

    const-string v4, "orderBy_"

    const-class v5, LW2/o0;

    const-string v6, "limit_"

    const-string v7, "offset_"

    const-string v8, "startAt_"

    const-string v9, "endAt_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\u0008\t"

    sget-object p3, LW2/t0;->DEFAULT_INSTANCE:LW2/t0;

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

.method public final m()LW2/n;
    .locals 1

    iget-object v0, p0, LW2/t0;->endAt_:LW2/n;

    if-nez v0, :cond_0

    invoke-static {}, LW2/n;->i()LW2/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final n()LW2/a0;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW2/a0;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, LW2/t0;->from_:Lcom/google/protobuf/Y;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final p()Lcom/google/protobuf/M;
    .locals 1

    iget-object v0, p0, LW2/t0;->limit_:Lcom/google/protobuf/M;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/M;->g()Lcom/google/protobuf/M;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final q(I)LW2/o0;
    .locals 1

    iget-object v0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW2/o0;

    return-object p1
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, LW2/t0;->orderBy_:Lcom/google/protobuf/Y;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()LW2/n;
    .locals 1

    iget-object v0, p0, LW2/t0;->startAt_:LW2/n;

    if-nez v0, :cond_0

    invoke-static {}, LW2/n;->i()LW2/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final t()LW2/m0;
    .locals 1

    iget-object v0, p0, LW2/t0;->where_:LW2/m0;

    if-nez v0, :cond_0

    invoke-static {}, LW2/m0;->j()LW2/m0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, LW2/t0;->endAt_:LW2/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, LW2/t0;->limit_:Lcom/google/protobuf/M;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, LW2/t0;->startAt_:LW2/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, LW2/t0;->where_:LW2/m0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
