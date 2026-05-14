.class public final Ll3/E;
.super Lj3/k;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll3/E;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method

.method private final e()V
    .locals 0

    return-void
.end method

.method private final f()V
    .locals 0

    return-void
.end method

.method private final g(I)V
    .locals 0

    return-void
.end method

.method private final h(I)V
    .locals 0

    return-void
.end method

.method private final i(I)V
    .locals 0

    return-void
.end method

.method private final j(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private final k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private final l(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private final m(Lj3/j;Lj3/f0;)V
    .locals 0

    return-void
.end method

.method private final n(Lj3/j;Lj3/f0;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Ll3/E;->a:I

    return-void
.end method

.method public final halfClose()V
    .locals 1

    iget v0, p0, Ll3/E;->a:I

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, Ll3/E;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj3/k;->isReady()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final request(I)V
    .locals 0

    iget p1, p0, Ll3/E;->a:I

    return-void
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Ll3/E;->a:I

    return-void
.end method

.method public final start(Lj3/j;Lj3/f0;)V
    .locals 1

    iget p2, p0, Ll3/E;->a:I

    packed-switch p2, :pswitch_data_0

    sget-object p2, Ll3/L0;->g0:Lj3/r0;

    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Lj3/j;->onClose(Lj3/r0;Lj3/f0;)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
