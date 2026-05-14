.class public final LY0/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/booklal/booklal/User;

.field public final synthetic c:LY0/C0;


# direct methods
.method public constructor <init>(LY0/C0;Ljava/lang/String;Lcom/booklal/booklal/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/Y0;->c:LY0/C0;

    iput-object p2, p0, LY0/Y0;->a:Ljava/lang/String;

    iput-object p3, p0, LY0/Y0;->b:Lcom/booklal/booklal/User;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object p1, p0, LY0/Y0;->b:Lcom/booklal/booklal/User;

    invoke-virtual {p1}, Lcom/booklal/booklal/User;->getUid()Ljava/lang/String;

    move-result-object p1

    new-instance v0, LG4/n;

    iget-object v1, p0, LY0/Y0;->c:LY0/C0;

    iget-object v2, v1, LY0/C0;->f:Landroid/content/Context;

    check-cast v2, Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {v0, v2}, LG4/n;-><init>(Landroid/content/Context;)V

    const-string v2, "Delete Chat"

    iget-object v3, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v3, Lh/b;

    iput-object v2, v3, Lh/b;->e:Ljava/lang/CharSequence;

    const-string v2, "Do you want to Delete this conversation?"

    iput-object v2, v3, Lh/b;->g:Ljava/lang/String;

    const v2, 0x7f08009e

    iput v2, v3, Lh/b;->c:I

    new-instance v2, LY0/Z0;

    iget-object v4, p0, LY0/Y0;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v4, p1}, LY0/Z0;-><init>(LY0/C0;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Delete"

    iput-object p1, v3, Lh/b;->h:Ljava/lang/String;

    iput-object v2, v3, Lh/b;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance p1, LY0/f0;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, LY0/f0;-><init>(I)V

    const-string v1, "Cancel"

    iput-object v1, v3, Lh/b;->j:Ljava/lang/String;

    iput-object p1, v3, Lh/b;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, LG4/n;->a()Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
