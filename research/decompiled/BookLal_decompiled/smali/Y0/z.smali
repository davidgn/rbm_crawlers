.class public final LY0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Dialog;

.field public final synthetic c:Landroid/widget/Button;

.field public final synthetic d:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;Landroid/widget/Button;I)V
    .locals 0

    iput p4, p0, LY0/z;->a:I

    iput-object p1, p0, LY0/z;->d:Landroid/view/View$OnClickListener;

    iput-object p2, p0, LY0/z;->b:Landroid/app/Dialog;

    iput-object p3, p0, LY0/z;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, LY0/z;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/booklal/booklal/PublicProfileActivity;->F:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iget-object v1, p0, LY0/z;->c:Landroid/widget/Button;

    iget-object v2, p0, LY0/z;->b:Landroid/app/Dialog;

    const-string v3, "blocked"

    const-string v4, "BLOCK_USER"

    iget-object v5, p0, LY0/z;->d:Landroid/view/View$OnClickListener;

    check-cast v5, LY0/z0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v4, v5, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    iget-object v4, v4, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    sput-object v3, Lcom/booklal/booklal/PublicProfileActivity;->F:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "Block"

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v5, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    const-string v1, "User UnBlocked."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v4, v5, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    iget-object v4, v4, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    sput-object v3, Lcom/booklal/booklal/PublicProfileActivity;->F:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "UnBlock"

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v5, LY0/z0;->b:Lcom/booklal/booklal/PublicProfileActivity;

    const-string v1, "User Blocked"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    sget-object p1, Lcom/booklal/booklal/ChatActivity;->B:Ljava/lang/Boolean;

    iget-object v0, p0, LY0/z;->c:Landroid/widget/Button;

    iget-object v1, p0, LY0/z;->b:Landroid/app/Dialog;

    const-string v2, "blocked"

    const-string v3, "BLOCK_USER"

    const/4 v4, 0x0

    iget-object v5, p0, LY0/z;->d:Landroid/view/View$OnClickListener;

    check-cast v5, LA2/p;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v3, v5, LA2/p;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v3, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast v3, Lcom/booklal/booklal/ChatActivity;

    iget-object v3, v3, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    sput-object v2, Lcom/booklal/booklal/ChatActivity;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "Block"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    const-string v0, "User UnBlocked."

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object p1, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    iget-object v6, p1, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v7, 0x7f110003

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v3, v5, LA2/p;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v3, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast v3, Lcom/booklal/booklal/ChatActivity;

    iget-object v3, v3, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    sput-object v2, Lcom/booklal/booklal/ChatActivity;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "UnBlock"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    const-string v0, "User Blocked"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object p1, v5, LA2/p;->c:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/ChatActivity;

    const-string v0, "You can not block this account."

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
