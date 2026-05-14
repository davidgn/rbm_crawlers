.class public final Lcom/google/protobuf/M;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/M;

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/M;

    invoke-direct {v0}, Lcom/google/protobuf/K;-><init>()V

    sput-object v0, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    const-class v1, Lcom/google/protobuf/M;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public static f(Lcom/google/protobuf/M;I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/M;->value_:I

    return-void
.end method

.method public static g()Lcom/google/protobuf/M;
    .locals 1

    sget-object v0, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    return-object v0
.end method

.method public static h()Lcom/google/protobuf/L;
    .locals 1

    sget-object v0, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/L;

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
    sget-object p1, Lcom/google/protobuf/M;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/protobuf/M;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/protobuf/M;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/protobuf/M;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/protobuf/L;

    sget-object p2, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/protobuf/M;

    invoke-direct {p1}, Lcom/google/protobuf/K;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "value_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    sget-object p3, Lcom/google/protobuf/M;->DEFAULT_INSTANCE:Lcom/google/protobuf/M;

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

.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/M;->value_:I

    return v0
.end method
