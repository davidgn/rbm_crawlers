.class public final Lk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public final synthetic b:Lk/t;

.field public c:Li1/D;


# direct methods
.method public constructor <init>(Lk/t;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/p;->b:Lk/t;

    iput-object p2, p0, Lk/p;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a(Lk/o;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lk/p;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lk/p;->c:Li1/D;

    if-eqz p1, :cond_0

    iget-object p1, p1, Li1/D;->b:Ljava/lang/Object;

    check-cast p1, Lk/o;

    iget-object p1, p1, Lk/o;->s:Lk/m;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lk/m;->m:Z

    invoke-virtual {p1, v0}, Lk/m;->p(Z)V

    :cond_0
    return-void
.end method
