.class public final LW2/y0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/y0;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/y0;

    invoke-direct {v0}, LW2/y0;-><init>()V

    sput-object v0, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    const-class v1, LW2/y0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/y0;->queryTypeCase_:I

    const-string v0, ""

    iput-object v0, p0, LW2/y0;->parent_:Ljava/lang/String;

    return-void
.end method

.method public static f(LW2/y0;LW2/t0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y0;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LW2/y0;->queryTypeCase_:I

    return-void
.end method

.method public static g(LW2/y0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y0;->parent_:Ljava/lang/String;

    return-void
.end method

.method public static h()LW2/y0;
    .locals 1

    sget-object v0, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    return-object v0
.end method

.method public static k()LW2/x0;
    .locals 1

    sget-object v0, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/x0;

    return-object v0
.end method

.method public static l(LW2/y0;)LW2/x0;
    .locals 1

    sget-object v0, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, LW2/x0;

    return-object p0
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
    sget-object p1, LW2/y0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/y0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/y0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/y0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/x0;

    sget-object p2, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/y0;

    invoke-direct {p1}, LW2/y0;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "queryType_"

    const-string p2, "queryTypeCase_"

    const-string p3, "parent_"

    const-class v0, LW2/t0;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    sget-object p3, LW2/y0;->DEFAULT_INSTANCE:LW2/y0;

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

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/y0;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public final j()LW2/t0;
    .locals 2

    iget v0, p0, LW2/y0;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/y0;->queryType_:Ljava/lang/Object;

    check-cast v0, LW2/t0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/t0;->l()LW2/t0;

    move-result-object v0

    return-object v0
.end method
