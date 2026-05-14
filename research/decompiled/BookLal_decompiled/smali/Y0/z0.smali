.class public final LY0/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/PublicProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/PublicProfileActivity;I)V
    .locals 0

    iput p2, p0, LY0/z0;->a:I

    iput-object p1, p0, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, LY0/z0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    invoke-virtual {p1}, Landroidx/activity/p;->onBackPressed()V

    return-void

    :pswitch_0
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0059

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0903f0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0903f1

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    const-string v4, "BLOCK_USER"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    iget-object v0, v0, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v3, "blocked"

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v3, LY0/y;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, LY0/y;-><init>(Landroid/widget/Button;I)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, LY0/z;

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v1, v3}, LY0/z;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;Landroid/widget/Button;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LA2/p;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfilePhotoViewActivity;

    iget-object v1, p0, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v1, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    const-string v2, "userKey"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
