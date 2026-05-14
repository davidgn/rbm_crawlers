.class public final LU2/e;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final ARRAY_CONFIG_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LU2/e;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final ORDER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private fieldPath_:Ljava/lang/String;

.field private valueModeCase_:I

.field private valueMode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LU2/e;

    invoke-direct {v0}, LU2/e;-><init>()V

    sput-object v0, LU2/e;->DEFAULT_INSTANCE:LU2/e;

    const-class v1, LU2/e;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LU2/e;->valueModeCase_:I

    const-string v0, ""

    iput-object v0, p0, LU2/e;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static f(LU2/e;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LU2/e;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static g(LU2/e;LU2/d;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LU2/d;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LU2/e;->valueMode_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LU2/e;->valueModeCase_:I

    return-void
.end method

.method public static h(LU2/e;)V
    .locals 1

    sget-object v0, LU2/b;->b:LU2/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LU2/b;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LU2/e;->valueMode_:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, LU2/e;->valueModeCase_:I

    return-void
.end method

.method public static l()LU2/c;
    .locals 1

    sget-object v0, LU2/e;->DEFAULT_INSTANCE:LU2/e;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LU2/c;

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
    sget-object p1, LU2/e;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LU2/e;

    monitor-enter p2

    :try_start_0
    sget-object p1, LU2/e;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LU2/e;->DEFAULT_INSTANCE:LU2/e;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LU2/e;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LU2/e;->DEFAULT_INSTANCE:LU2/e;

    return-object p1

    :pswitch_2
    new-instance p1, LU2/c;

    sget-object p2, LU2/e;->DEFAULT_INSTANCE:LU2/e;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LU2/e;

    invoke-direct {p1}, LU2/e;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "valueMode_"

    const-string p2, "valueModeCase_"

    const-string p3, "fieldPath_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003?\u0000"

    sget-object p3, LU2/e;->DEFAULT_INSTANCE:LU2/e;

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

    iget-object v0, p0, LU2/e;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method

.method public final j()LU2/d;
    .locals 3

    iget v0, p0, LU2/e;->valueModeCase_:I

    sget-object v1, LU2/d;->b:LU2/d;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, LU2/e;->valueMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, LU2/d;->d:LU2/d;

    goto :goto_0

    :cond_1
    sget-object v1, LU2/d;->c:LU2/d;

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    sget-object v1, LU2/d;->e:LU2/d;

    :cond_3
    return-object v1
.end method

.method public final k()I
    .locals 3

    iget v0, p0, LU2/e;->valueModeCase_:I

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
