.class public final Landroidx/fragment/app/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/g0;

.field public final synthetic b:Landroidx/fragment/app/M;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/M;Landroidx/fragment/app/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/M;

    iput-object p2, p0, Landroidx/fragment/app/L;->a:Landroidx/fragment/app/g0;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/L;->a:Landroidx/fragment/app/g0;

    iget-object v0, p1, Landroidx/fragment/app/g0;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/g0;->j()V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/M;->a:Landroidx/fragment/app/Y;

    invoke-static {p1, v0}, Landroidx/fragment/app/n;->h(Landroid/view/ViewGroup;Landroidx/fragment/app/Y;)Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->g()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
