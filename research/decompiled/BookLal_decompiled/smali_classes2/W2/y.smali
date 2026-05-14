.class public final LW2/y;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0;


# static fields
.field public static final APPEND_MISSING_ELEMENTS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:LW2/y;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final INCREMENT_FIELD_NUMBER:I = 0x3

.field public static final MAXIMUM_FIELD_NUMBER:I = 0x4

.field public static final MINIMUM_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER:I = 0x7

.field public static final SET_TO_SERVER_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private fieldPath_:Ljava/lang/String;

.field private transformTypeCase_:I

.field private transformType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW2/y;

    invoke-direct {v0}, LW2/y;-><init>()V

    sput-object v0, LW2/y;->DEFAULT_INSTANCE:LW2/y;

    const-class v1, LW2/y;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW2/y;->transformTypeCase_:I

    const-string v0, ""

    iput-object v0, p0, LW2/y;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static f(LW2/y;LW2/e;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, LW2/y;->transformTypeCase_:I

    return-void
.end method

.method public static g(LW2/y;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static h(LW2/y;LW2/e;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, LW2/y;->transformTypeCase_:I

    return-void
.end method

.method public static i(LW2/y;)V
    .locals 1

    sget-object v0, LW2/x;->c:LW2/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LW2/x;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LW2/y;->transformType_:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, LW2/y;->transformTypeCase_:I

    return-void
.end method

.method public static j(LW2/y;LW2/H0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LW2/y;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, LW2/y;->transformTypeCase_:I

    return-void
.end method

.method public static q()LW2/w;
    .locals 1

    sget-object v0, LW2/y;->DEFAULT_INSTANCE:LW2/y;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, LW2/w;

    return-object v0
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
    sget-object p1, LW2/y;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, LW2/y;

    monitor-enter p2

    :try_start_0
    sget-object p1, LW2/y;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, LW2/y;->DEFAULT_INSTANCE:LW2/y;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, LW2/y;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, LW2/y;->DEFAULT_INSTANCE:LW2/y;

    return-object p1

    :pswitch_2
    new-instance p1, LW2/w;

    sget-object p2, LW2/y;->DEFAULT_INSTANCE:LW2/y;

    invoke-direct {p1, p2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/K;)V

    return-object p1

    :pswitch_3
    new-instance p1, LW2/y;

    invoke-direct {p1}, LW2/y;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "transformType_"

    const-string v1, "transformTypeCase_"

    const-string v2, "fieldPath_"

    const-class v3, LW2/H0;

    const-class v4, LW2/H0;

    const-class v5, LW2/H0;

    const-class v6, LW2/e;

    const-class v7, LW2/e;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000"

    sget-object p3, LW2/y;->DEFAULT_INSTANCE:LW2/y;

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

.method public final k()LW2/e;
    .locals 2

    iget v0, p0, LW2/y;->transformTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/y;->transformType_:Ljava/lang/Object;

    check-cast v0, LW2/e;

    return-object v0

    :cond_0
    invoke-static {}, LW2/e;->i()LW2/e;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/y;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method

.method public final m()LW2/H0;
    .locals 2

    iget v0, p0, LW2/y;->transformTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/y;->transformType_:Ljava/lang/Object;

    check-cast v0, LW2/H0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/H0;->t()LW2/H0;

    move-result-object v0

    return-object v0
.end method

.method public final n()LW2/e;
    .locals 2

    iget v0, p0, LW2/y;->transformTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LW2/y;->transformType_:Ljava/lang/Object;

    check-cast v0, LW2/e;

    return-object v0

    :cond_0
    invoke-static {}, LW2/e;->i()LW2/e;

    move-result-object v0

    return-object v0
.end method

.method public final o()LW2/x;
    .locals 3

    iget v0, p0, LW2/y;->transformTypeCase_:I

    const/4 v1, 0x2

    sget-object v2, LW2/x;->b:LW2/x;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LW2/y;->transformType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, LW2/x;->c:LW2/x;

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    sget-object v2, LW2/x;->d:LW2/x;

    :cond_2
    return-object v2
.end method

.method public final p()I
    .locals 1

    iget v0, p0, LW2/y;->transformTypeCase_:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
