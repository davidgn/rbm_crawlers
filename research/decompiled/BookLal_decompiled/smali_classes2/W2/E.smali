.class public final LW2/E;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final ADD_TARGET_FIELD_NUMBER:I = 0x2

.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LW2/E;

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final REMOVE_TARGET_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0;"
        }
    .end annotation
.end field

.field private targetChangeCase_:I

.field private targetChange_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/E;

    invoke-direct {v0}, LW2/E;-><init>()V

    sput-object v0, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    const-class v1, LW2/E;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/E;->targetChangeCase_:I

    sget-object v0, Lcom/google/protobuf/o0;->b:Lcom/google/protobuf/o0;

    iput-object v0, p0, LW2/E;->labels_:Lcom/google/protobuf/o0;

    const-string v0, ""

    iput-object v0, p0, LW2/E;->database_:Ljava/lang/String;

    return-void
.end method

.method public static f(LW2/E;)Lcom/google/protobuf/o0;
    .locals 2

    iget-object v0, p0, LW2/E;->labels_:Lcom/google/protobuf/o0;

    iget-boolean v1, v0, Lcom/google/protobuf/o0;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->c()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, LW2/E;->labels_:Lcom/google/protobuf/o0;

    :cond_0
    iget-object p0, p0, LW2/E;->labels_:Lcom/google/protobuf/o0;

    return-object p0
.end method

.method public static g(LW2/E;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/E;->database_:Ljava/lang/String;

    return-void
.end method

.method public static h(LW2/E;LW2/z0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/E;->targetChange_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LW2/E;->targetChangeCase_:I

    return-void
.end method

.method public static i(LW2/E;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LW2/E;->targetChangeCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LW2/E;->targetChange_:Ljava/lang/Object;

    return-void
.end method

.method public static j()LW2/E;
    .locals 1

    sget-object v0, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    return-object v0
.end method

.method public static k()LW2/C;
    .locals 1

    sget-object v0, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/C;

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
    sget-object p1, LW2/E;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/E;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/E;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/E;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/C;

    sget-object p2, LW2/E;->DEFAULT_INSTANCE:LW2/E;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/E;

    invoke-direct {p1}, LW2/E;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "targetChange_"

    const-string v1, "targetChangeCase_"

    const-string v2, "database_"

    const-class v3, LW2/z0;

    const-string v4, "labels_"

    sget-object v5, LW2/D;->a:Lcom/google/protobuf/n0;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u0002<\u0000\u00037\u0000\u00042"

    sget-object p3, LW2/E;->DEFAULT_INSTANCE:LW2/E;

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
