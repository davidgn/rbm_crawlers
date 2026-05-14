.class public final LW2/N;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/N;

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x2


# instance fields
.field private readTime_:Lcom/google/protobuf/T0;

.field private result_:LW2/c;

.field private transaction_:Lcom/google/protobuf/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/N;

    invoke-direct {v0}, LW2/N;-><init>()V

    sput-object v0, LW2/N;->DEFAULT_INSTANCE:LW2/N;

    const-class v1, LW2/N;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object v0, p0, LW2/N;->transaction_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static f()LW2/N;
    .locals 1

    sget-object v0, LW2/N;->DEFAULT_INSTANCE:LW2/N;

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
    sget-object p1, LW2/N;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/N;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/N;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/N;->DEFAULT_INSTANCE:LW2/N;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/N;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/N;->DEFAULT_INSTANCE:LW2/N;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/b;

    sget-object p2, LW2/N;->DEFAULT_INSTANCE:LW2/N;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/N;

    invoke-direct {p1}, LW2/N;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "result_"

    const-string p2, "transaction_"

    const-string p3, "readTime_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\n\u0003\t"

    sget-object p3, LW2/N;->DEFAULT_INSTANCE:LW2/N;

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

.method public final g()LW2/c;
    .locals 1

    iget-object v0, p0, LW2/N;->result_:LW2/c;

    if-nez v0, :cond_0

    invoke-static {}, LW2/c;->g()LW2/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method
