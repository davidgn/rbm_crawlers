.class public final synthetic LY0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Dashboard;I)V
    .locals 0

    iput p2, p0, LY0/E;->a:I

    iput-object p1, p0, LY0/E;->b:Lcom/booklal/booklal/Dashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LY0/E;->b:Lcom/booklal/booklal/Dashboard;

    iget v1, p0, LY0/E;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/booklal/booklal/Dashboard;->l(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    sget v1, Lcom/booklal/booklal/Dashboard;->G0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    sget v1, Lcom/booklal/booklal/Dashboard;->G0:I

    invoke-virtual {v0}, Lcom/booklal/booklal/Dashboard;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
