.class public final LW2/l;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final COMMIT_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LW2/l;

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final WRITE_RESULTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private commitTime_:Lcom/google/protobuf/T0;

.field private writeResults_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/l;

    invoke-direct {v0}, LW2/l;-><init>()V

    sput-object v0, LW2/l;->DEFAULT_INSTANCE:LW2/l;

    const-class v1, LW2/l;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/l;->writeResults_:Lcom/google/protobuf/Y;

    return-void
.end method

.method public static g()LW2/l;
    .locals 1

    sget-object v0, LW2/l;->DEFAULT_INSTANCE:LW2/l;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/l;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/l;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/l;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/l;->DEFAULT_INSTANCE:LW2/l;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/l;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/l;->DEFAULT_INSTANCE:LW2/l;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/b;

    sget-object p2, LW2/l;->DEFAULT_INSTANCE:LW2/l;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/l;

    invoke-direct {p1}, LW2/l;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "writeResults_"

    const-class p2, LW2/Q0;

    const-string p3, "commitTime_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\t"

    sget-object p3, LW2/l;->DEFAULT_INSTANCE:LW2/l;

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

.method public final f()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, LW2/l;->commitTime_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final h(I)LW2/Q0;
    .locals 1

    iget-object v0, p0, LW2/l;->writeResults_:Lcom/google/protobuf/Y;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW2/Q0;

    return-object p1
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, LW2/l;->writeResults_:Lcom/google/protobuf/Y;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
