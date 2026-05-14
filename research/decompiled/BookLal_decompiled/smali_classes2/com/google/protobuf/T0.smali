.class public final Lcom/google/protobuf/T0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private nanos_:I

.field private seconds_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/T0;

    invoke-direct {v0}, Lcom/google/protobuf/K;-><init>()V

    sput-object v0, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    const-class v1, Lcom/google/protobuf/T0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public static f(Lcom/google/protobuf/T0;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/protobuf/T0;->seconds_:J

    return-void
.end method

.method public static g(Lcom/google/protobuf/T0;I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/T0;->nanos_:I

    return-void
.end method

.method public static h()Lcom/google/protobuf/T0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    return-object v0
.end method

.method public static k()Lcom/google/protobuf/S0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/S0;

    return-object v0
.end method

.method public static l(Lcom/google/protobuf/T0;)Lcom/google/protobuf/S0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/S0;

    return-object p0
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
    sget-object p1, Lcom/google/protobuf/T0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/protobuf/T0;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/protobuf/T0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/protobuf/T0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/protobuf/S0;

    sget-object p2, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/protobuf/T0;

    invoke-direct {p1}, Lcom/google/protobuf/K;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "seconds_"

    const-string p2, "nanos_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    sget-object p3, Lcom/google/protobuf/T0;->DEFAULT_INSTANCE:Lcom/google/protobuf/T0;

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

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/T0;->nanos_:I

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/T0;->seconds_:J

    return-wide v0
.end method
