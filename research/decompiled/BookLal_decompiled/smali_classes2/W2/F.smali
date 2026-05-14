.class public final LW2/F;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field private static final DEFAULT_INSTANCE:LW2/F;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private responseTypeCase_:I

.field private responseType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/F;

    invoke-direct {v0}, LW2/F;-><init>()V

    sput-object v0, LW2/F;->DEFAULT_INSTANCE:LW2/F;

    const-class v1, LW2/F;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/F;->responseTypeCase_:I

    return-void
.end method

.method public static f()LW2/F;
    .locals 1

    sget-object v0, LW2/F;->DEFAULT_INSTANCE:LW2/F;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/F;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/F;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/F;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/F;->DEFAULT_INSTANCE:LW2/F;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/F;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/F;->DEFAULT_INSTANCE:LW2/F;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/b;

    sget-object p2, LW2/F;->DEFAULT_INSTANCE:LW2/F;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/F;

    invoke-direct {p1}, LW2/F;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "responseType_"

    const-string v1, "responseTypeCase_"

    const-class v2, LW2/B0;

    const-class v3, LW2/r;

    const-class v4, LW2/s;

    const-class v5, LW2/A;

    const-class v6, LW2/v;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    sget-object p3, LW2/F;->DEFAULT_INSTANCE:LW2/F;

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

.method public final g()LW2/r;
    .locals 2

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/F;->responseType_:Ljava/lang/Object;

    check-cast v0, LW2/r;

    return-object v0

    :cond_0
    invoke-static {}, LW2/r;->f()LW2/r;

    move-result-object v0

    return-object v0
.end method

.method public final h()LW2/s;
    .locals 2

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/F;->responseType_:Ljava/lang/Object;

    check-cast v0, LW2/s;

    return-object v0

    :cond_0
    invoke-static {}, LW2/s;->f()LW2/s;

    move-result-object v0

    return-object v0
.end method

.method public final i()LW2/v;
    .locals 2

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/F;->responseType_:Ljava/lang/Object;

    check-cast v0, LW2/v;

    return-object v0

    :cond_0
    invoke-static {}, LW2/v;->f()LW2/v;

    move-result-object v0

    return-object v0
.end method

.method public final j()LW2/A;
    .locals 2

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/F;->responseType_:Ljava/lang/Object;

    check-cast v0, LW2/A;

    return-object v0

    :cond_0
    invoke-static {}, LW2/A;->f()LW2/A;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 4

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x6

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public final l()LW2/B0;
    .locals 2

    iget v0, p0, LW2/F;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/F;->responseType_:Ljava/lang/Object;

    check-cast v0, LW2/B0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/B0;->g()LW2/B0;

    move-result-object v0

    return-object v0
.end method
