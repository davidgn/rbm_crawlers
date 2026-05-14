.class public final LM/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LM/z0;


# instance fields
.field public final a:LM/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, LM/w0;->q:LM/z0;

    sput-object v0, LM/z0;->b:LM/z0;

    goto :goto_0

    :cond_0
    sget-object v0, LM/x0;->b:LM/z0;

    sput-object v0, LM/z0;->b:LM/z0;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, LM/x0;

    invoke-direct {v0, p0}, LM/x0;-><init>(LM/z0;)V

    iput-object v0, p0, LM/z0;->a:LM/x0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, LM/w0;

    invoke-direct {v0, p0, p1}, LM/w0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/z0;->a:LM/x0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LM/u0;

    invoke-direct {v0, p0, p1}, LM/u0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/z0;->a:LM/x0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, LM/t0;

    invoke-direct {v0, p0, p1}, LM/t0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/z0;->a:LM/x0;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, LM/s0;

    invoke-direct {v0, p0, p1}, LM/s0;-><init>(LM/z0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/z0;->a:LM/x0;

    :goto_0
    return-void
.end method

.method public static e(LE/c;IIII)LE/c;
    .locals 5

    iget v0, p0, LE/c;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LE/c;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, LE/c;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, LE/c;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, LE/c;->a(IIII)LE/c;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/WindowInsets;Landroid/view/View;)LM/z0;
    .locals 2

    new-instance v0, LM/z0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, LM/z0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LM/O;->a(Landroid/view/View;)LM/z0;

    move-result-object p0

    iget-object v1, v0, LM/z0;->a:LM/x0;

    invoke-virtual {v1, p0}, LM/x0;->p(LM/z0;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, LM/x0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LM/z0;->a:LM/x0;

    invoke-virtual {v0}, LM/x0;->j()LE/c;

    move-result-object v0

    iget v0, v0, LE/c;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, LM/z0;->a:LM/x0;

    invoke-virtual {v0}, LM/x0;->j()LE/c;

    move-result-object v0

    iget v0, v0, LE/c;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LM/z0;->a:LM/x0;

    invoke-virtual {v0}, LM/x0;->j()LE/c;

    move-result-object v0

    iget v0, v0, LE/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, LM/z0;->a:LM/x0;

    invoke-virtual {v0}, LM/x0;->j()LE/c;

    move-result-object v0

    iget v0, v0, LE/c;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LM/z0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LM/z0;

    iget-object p1, p1, LM/z0;->a:LM/x0;

    iget-object v0, p0, LM/z0;->a:LM/x0;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(IIII)LM/z0;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, LM/p0;

    invoke-direct {v0, p0}, LM/p0;-><init>(LM/z0;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, LM/o0;

    invoke-direct {v0, p0}, LM/o0;-><init>(LM/z0;)V

    goto :goto_0

    :cond_1
    new-instance v0, LM/n0;

    invoke-direct {v0, p0}, LM/n0;-><init>(LM/z0;)V

    :goto_0
    invoke-static {p1, p2, p3, p4}, LE/c;->a(IIII)LE/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LM/q0;->d(LE/c;)V

    invoke-virtual {v0}, LM/q0;->b()LM/z0;

    move-result-object p1

    return-object p1
.end method

.method public final g()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, LM/z0;->a:LM/x0;

    instance-of v1, v0, LM/r0;

    if-eqz v1, :cond_0

    check-cast v0, LM/r0;

    iget-object v0, v0, LM/r0;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LM/z0;->a:LM/x0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM/x0;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
