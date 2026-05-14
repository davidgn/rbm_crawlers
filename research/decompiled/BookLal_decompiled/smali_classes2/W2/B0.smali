.class public final LW2/B0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LW2/B0;

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cause_:La3/a;

.field private readTime_:Lcom/google/protobuf/T0;

.field private resumeToken_:Lcom/google/protobuf/m;

.field private targetChangeType_:I

.field private targetIdsMemoizedSerializedSize:I

.field private targetIds_:Lcom/google/protobuf/W;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/B0;

    invoke-direct {v0}, LW2/B0;-><init>()V

    sput-object v0, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

    const-class v1, LW2/B0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LW2/B0;->targetIdsMemoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/K;->emptyIntList()Lcom/google/protobuf/W;

    move-result-object v0

    iput-object v0, p0, LW2/B0;->targetIds_:Lcom/google/protobuf/W;

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object v0, p0, LW2/B0;->resumeToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static g()LW2/B0;
    .locals 1

    sget-object v0, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

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
    sget-object p1, LW2/B0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/B0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/B0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/B0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/b;

    sget-object p2, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/B0;

    invoke-direct {p1}, LW2/B0;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "targetChangeType_"

    const-string p2, "targetIds_"

    const-string p3, "cause_"

    const-string v0, "resumeToken_"

    const-string v1, "readTime_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\u000c\u0002\'\u0003\t\u0004\n\u0006\t"

    sget-object p3, LW2/B0;->DEFAULT_INSTANCE:LW2/B0;

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

.method public final f()La3/a;
    .locals 1

    iget-object v0, p0, LW2/B0;->cause_:La3/a;

    if-nez v0, :cond_0

    invoke-static {}, La3/a;->g()La3/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getReadTime()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, LW2/B0;->readTime_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getResumeToken()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, LW2/B0;->resumeToken_:Lcom/google/protobuf/m;

    return-object v0
.end method

.method public final h()LW2/A0;
    .locals 2

    iget v0, p0, LW2/B0;->targetChangeType_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, LW2/A0;->f:LW2/A0;

    goto :goto_0

    :cond_1
    sget-object v0, LW2/A0;->e:LW2/A0;

    goto :goto_0

    :cond_2
    sget-object v0, LW2/A0;->d:LW2/A0;

    goto :goto_0

    :cond_3
    sget-object v0, LW2/A0;->c:LW2/A0;

    goto :goto_0

    :cond_4
    sget-object v0, LW2/A0;->b:LW2/A0;

    :goto_0
    if-nez v0, :cond_5

    sget-object v0, LW2/A0;->l:LW2/A0;

    :cond_5
    return-object v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, LW2/B0;->targetIds_:Lcom/google/protobuf/W;

    check-cast v0, Lcom/google/protobuf/O;

    invoke-virtual {v0}, Lcom/google/protobuf/O;->size()I

    move-result v0

    return v0
.end method

.method public final j()Lcom/google/protobuf/W;
    .locals 1

    iget-object v0, p0, LW2/B0;->targetIds_:Lcom/google/protobuf/W;

    return-object v0
.end method
