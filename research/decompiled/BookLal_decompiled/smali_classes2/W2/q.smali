.class public final LW2/q;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LW2/q;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private createTime_:Lcom/google/protobuf/T0;

.field private fields_:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private updateTime_:Lcom/google/protobuf/T0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/q;

    invoke-direct {v0}, LW2/q;-><init>()V

    sput-object v0, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    const-class v1, LW2/q;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    sget-object v0, Lcom/google/protobuf/o0;->b:Lcom/google/protobuf/o0;

    iput-object v0, p0, LW2/q;->fields_:Lcom/google/protobuf/o0;

    const-string v0, ""

    iput-object v0, p0, LW2/q;->name_:Ljava/lang/String;

    return-void
.end method

.method public static f(LW2/q;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/q;->name_:Ljava/lang/String;

    return-void
.end method

.method public static g(LW2/q;)Lcom/google/protobuf/o0;
    .locals 2

    iget-object v0, p0, LW2/q;->fields_:Lcom/google/protobuf/o0;

    iget-boolean v1, v0, Lcom/google/protobuf/o0;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->c()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, LW2/q;->fields_:Lcom/google/protobuf/o0;

    :cond_0
    iget-object p0, p0, LW2/q;->fields_:Lcom/google/protobuf/o0;

    return-object p0
.end method

.method public static h(LW2/q;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/q;->updateTime_:Lcom/google/protobuf/T0;

    return-void
.end method

.method public static i()LW2/q;
    .locals 1

    sget-object v0, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    return-object v0
.end method

.method public static l()LW2/o;
    .locals 1

    sget-object v0, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/o;

    return-object v0
.end method

.method public static m(LW2/q;)LW2/o;
    .locals 1

    sget-object v0, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, LW2/o;

    return-object p0
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
    sget-object p1, LW2/q;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/q;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/q;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/q;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/o;

    sget-object p2, LW2/q;->DEFAULT_INSTANCE:LW2/q;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/q;

    invoke-direct {p1}, LW2/q;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "name_"

    const-string p2, "fields_"

    sget-object p3, LW2/p;->a:Lcom/google/protobuf/n0;

    const-string v0, "createTime_"

    const-string v1, "updateTime_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u00022\u0003\t\u0004\t"

    sget-object p3, LW2/q;->DEFAULT_INSTANCE:LW2/q;

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

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/q;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LW2/q;->fields_:Lcom/google/protobuf/o0;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, LW2/q;->updateTime_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method
