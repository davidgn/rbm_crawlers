.class public final Ls2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/x;
.implements Lk/k;


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    iput-object p1, p0, Ls2/s;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lk/m;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Ls2/s;->a:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->m:Lu2/l;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lu2/l;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Landroid/view/View;LM/z0;)LM/z0;
    .locals 5

    iget-object p1, p0, Ls2/s;->a:Lcom/google/android/material/navigation/NavigationView;

    iget-object v0, p1, Ls2/t;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Ls2/t;->b:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p1, Ls2/t;->b:Landroid/graphics/Rect;

    invoke-virtual {p2}, LM/z0;->b()I

    move-result v1

    invoke-virtual {p2}, LM/z0;->d()I

    move-result v2

    invoke-virtual {p2}, LM/z0;->c()I

    move-result v3

    invoke-virtual {p2}, LM/z0;->a()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p1, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, LM/z0;->d()I

    move-result v1

    iget v2, v0, Ls2/p;->B:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    iput v1, v0, Ls2/p;->B:I

    iget-object v1, v0, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Ls2/p;->z:Z

    if-eqz v1, :cond_1

    iget v1, v0, Ls2/p;->B:I

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v2, v0, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v3, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-object v1, v0, Ls2/p;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, LM/z0;->a()I

    move-result v4

    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v0, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p2}, LM/a0;->b(Landroid/view/View;LM/z0;)LM/z0;

    iget-object p2, p2, LM/z0;->a:LM/x0;

    invoke-virtual {p2}, LM/x0;->j()LE/c;

    move-result-object v0

    sget-object v1, LE/c;->e:LE/c;

    invoke-virtual {v0, v1}, LE/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Ls2/t;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    invoke-virtual {p2}, LM/x0;->c()LM/z0;

    move-result-object p1

    return-object p1
.end method

.method public j(Lk/m;)V
    .locals 0

    return-void
.end method
