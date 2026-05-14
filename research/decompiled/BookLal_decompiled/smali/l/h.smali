.class public final Ll/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ll/f;

.field public final synthetic b:Ll/k;


# direct methods
.method public constructor <init>(Ll/k;Ll/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/h;->b:Ll/k;

    iput-object p2, p0, Ll/h;->a:Ll/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll/h;->b:Ll/k;

    iget-object v1, v0, Ll/k;->c:Lk/m;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lk/m;->e:Lk/k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lk/k;->j(Lk/m;)V

    :cond_0
    iget-object v1, v0, Ll/k;->m:Lk/B;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ll/h;->a:Ll/f;

    invoke-virtual {v1}, Lk/x;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lk/x;->e:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Lk/x;->d(IIZZ)V

    :goto_0
    iput-object v1, v0, Ll/k;->y:Ll/f;

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Ll/k;->A:Ll/h;

    return-void
.end method
