.class public final LY0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LO1/e;

.field public final synthetic c:LY0/x0;


# direct methods
.method public constructor <init>(LY0/x0;Ljava/lang/String;LO1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/u0;->c:LY0/x0;

    iput-object p2, p0, LY0/u0;->a:Ljava/lang/String;

    iput-object p3, p0, LY0/u0;->b:LO1/e;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, LY0/u0;->a:Ljava/lang/String;

    const-string v1, "CLICK_TO_KNOW_HOW_THIS_APP_WORKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LY0/u0;->c:LY0/x0;

    if-eqz v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, v2, LY0/x0;->f:Landroid/content/Context;

    check-cast p2, Lcom/booklal/booklal/ChatActivity;

    const-class v0, Lcom/booklal/booklal/ShowHTML;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "page"

    const-string v0, "howBookLalWorks"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, v2, LY0/x0;->f:Landroid/content/Context;

    check-cast p2, Lcom/booklal/booklal/ChatActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "DELETE_ACCOUNT_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object p2, v2, LY0/x0;->f:Landroid/content/Context;

    check-cast p2, Lcom/booklal/booklal/ChatActivity;

    const-class v0, Lcom/booklal/booklal/DeleteAccountRequest;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, v2, LY0/x0;->f:Landroid/content/Context;

    check-cast p2, Lcom/booklal/booklal/ChatActivity;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LY0/u0;->b:LO1/e;

    invoke-virtual {v0, p1, p2}, LO1/e;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
