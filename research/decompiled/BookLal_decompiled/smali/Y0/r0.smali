.class public final LY0/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:LY0/t0;


# direct methods
.method public synthetic constructor <init>(LY0/t0;Landroid/app/AlertDialog;I)V
    .locals 0

    iput p3, p0, LY0/r0;->a:I

    iput-object p1, p0, LY0/r0;->c:LY0/t0;

    iput-object p2, p0, LY0/r0;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, LY0/r0;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "chats"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, p0, LY0/r0;->c:LY0/t0;

    iget-object v1, v0, LY0/t0;->c:Lu0/y;

    check-cast v1, LY0/x0;

    iget-object v1, v1, LY0/x0;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v1, "messages"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, v0, LY0/t0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Message;

    invoke-virtual {v0}, Lcom/booklal/booklal/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, LY0/r0;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, LY0/r0;->c:LY0/t0;

    iget-object v0, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Message;

    const-string v1, "This message is removed."

    invoke-virtual {v0, v1}, Lcom/booklal/booklal/Message;->setMessage(Ljava/lang/String;)V

    iget-object v0, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Message;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/booklal/booklal/Message;->setFeeling(I)V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v2, p1, LY0/t0;->c:Lu0/y;

    check-cast v2, LY0/x0;

    iget-object v2, v2, LY0/x0;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v2, "messages"

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v3, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/booklal/booklal/Message;

    invoke-virtual {v3}, Lcom/booklal/booklal/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v3, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast v3, Lcom/booklal/booklal/Message;

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p1, LY0/t0;->c:Lu0/y;

    check-cast v1, LY0/x0;

    iget-object v1, v1, LY0/x0;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/Message;

    invoke-virtual {v1}, Lcom/booklal/booklal/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object p1, p1, LY0/t0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/Message;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, LY0/r0;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
