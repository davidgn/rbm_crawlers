.class public final LW2/K0;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements LW2/L0;


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:LW2/K0;

.field public static final DELETE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_FIELD_NUMBER:I = 0x6

.field public static final UPDATE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x3

.field public static final UPDATE_TRANSFORMS_FIELD_NUMBER:I = 0x7

.field public static final VERIFY_FIELD_NUMBER:I = 0x5


# instance fields
.field private currentDocument_:LW2/K;

.field private operationCase_:I

.field private operation_:Ljava/lang/Object;

.field private updateMask_:LW2/u;

.field private updateTransforms_:Lcom/google/protobuf/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/K0;

    invoke-direct {v0}, LW2/K0;-><init>()V

    sput-object v0, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    const-class v1, LW2/K0;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/K0;->operationCase_:I

    invoke-static {}, Lcom/google/protobuf/K;->emptyProtobufList()Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/K0;->updateTransforms_:Lcom/google/protobuf/Y;

    return-void
.end method

.method public static f(LW2/K0;LW2/u;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/K0;->updateMask_:LW2/u;

    return-void
.end method

.method public static g(LW2/K0;LW2/y;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LW2/K0;->updateTransforms_:Lcom/google/protobuf/Y;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/d;

    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/K;->mutableCopy(Lcom/google/protobuf/Y;)Lcom/google/protobuf/Y;

    move-result-object v0

    iput-object v0, p0, LW2/K0;->updateTransforms_:Lcom/google/protobuf/Y;

    :cond_0
    iget-object p0, p0, LW2/K0;->updateTransforms_:Lcom/google/protobuf/Y;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(LW2/K0;LW2/q;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/K0;->operation_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, LW2/K0;->operationCase_:I

    return-void
.end method

.method public static i(LW2/K0;LW2/K;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/K0;->currentDocument_:LW2/K;

    return-void
.end method

.method public static j(LW2/K0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, LW2/K0;->operationCase_:I

    iput-object p1, p0, LW2/K0;->operation_:Ljava/lang/Object;

    return-void
.end method

.method public static k(LW2/K0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    iput v0, p0, LW2/K0;->operationCase_:I

    iput-object p1, p0, LW2/K0;->operation_:Ljava/lang/Object;

    return-void
.end method

.method public static x()LW2/I0;
    .locals 1

    sget-object v0, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/I0;

    return-object v0
.end method

.method public static y(LW2/K0;)LW2/I0;
    .locals 1

    sget-object v0, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, LW2/I0;

    return-object p0
.end method

.method public static z([B)LW2/K0;
    .locals 1

    sget-object v0, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, LW2/K0;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, LW2/K0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/K0;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/K0;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/K0;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/I0;

    sget-object p2, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/K0;

    invoke-direct {p1}, LW2/K0;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "operation_"

    const-string v1, "operationCase_"

    const-class v2, LW2/q;

    const-string v3, "updateMask_"

    const-string v4, "currentDocument_"

    const-class v5, LW2/z;

    const-string v6, "updateTransforms_"

    const-class v7, LW2/y;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\t\u0004\t\u0005\u023b\u0000\u0006<\u0000\u0007\u001b"

    sget-object p3, LW2/K0;->DEFAULT_INSTANCE:LW2/K0;

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

.method public final l()LW2/K;
    .locals 1

    iget-object v0, p0, LW2/K0;->currentDocument_:LW2/K;

    if-nez v0, :cond_0

    invoke-static {}, LW2/K;->i()LW2/K;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/K0;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final n()LW2/J0;
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, LW2/J0;->d:LW2/J0;

    goto :goto_0

    :cond_1
    sget-object v0, LW2/J0;->c:LW2/J0;

    goto :goto_0

    :cond_2
    sget-object v0, LW2/J0;->b:LW2/J0;

    goto :goto_0

    :cond_3
    sget-object v0, LW2/J0;->a:LW2/J0;

    goto :goto_0

    :cond_4
    sget-object v0, LW2/J0;->e:LW2/J0;

    :goto_0
    return-object v0
.end method

.method public final o()LW2/z;
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/K0;->operation_:Ljava/lang/Object;

    check-cast v0, LW2/z;

    return-object v0

    :cond_0
    invoke-static {}, LW2/z;->f()LW2/z;

    move-result-object v0

    return-object v0
.end method

.method public final p()LW2/q;
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/K0;->operation_:Ljava/lang/Object;

    check-cast v0, LW2/q;

    return-object v0

    :cond_0
    invoke-static {}, LW2/q;->i()LW2/q;

    move-result-object v0

    return-object v0
.end method

.method public final q()LW2/u;
    .locals 1

    iget-object v0, p0, LW2/K0;->updateMask_:LW2/u;

    if-nez v0, :cond_0

    invoke-static {}, LW2/u;->g()LW2/u;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final r()Lcom/google/protobuf/Y;
    .locals 1

    iget-object v0, p0, LW2/K0;->updateTransforms_:Lcom/google/protobuf/Y;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/K0;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, LW2/K0;->currentDocument_:LW2/K;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, LW2/K0;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, LW2/K0;->updateMask_:LW2/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
