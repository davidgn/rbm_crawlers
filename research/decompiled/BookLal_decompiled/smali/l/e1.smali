.class public final Ll/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lk/a;

.field public final synthetic b:Ll/f1;


# direct methods
.method public constructor <init>(Ll/f1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/e1;->b:Ll/f1;

    new-instance v0, Lk/a;

    iget-object v1, p1, Ll/f1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Ll/f1;->h:Ljava/lang/CharSequence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x1000

    iput v2, v0, Lk/a;->e:I

    iput v2, v0, Lk/a;->l:I

    const/4 v2, 0x0

    iput-object v2, v0, Lk/a;->q:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lk/a;->r:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lk/a;->s:Z

    iput-boolean v2, v0, Lk/a;->t:Z

    const/16 v2, 0x10

    iput v2, v0, Lk/a;->u:I

    iput-object v1, v0, Lk/a;->n:Landroid/content/Context;

    iput-object p1, v0, Lk/a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Ll/e1;->a:Lk/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ll/e1;->b:Ll/f1;

    iget-object v0, p1, Ll/f1;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Ll/f1;->l:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget-object v1, p0, Ll/e1;->a:Lk/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
