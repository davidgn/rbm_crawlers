.class public final LY0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/ChatActivity;I)V
    .locals 0

    iput p2, p0, LY0/A;->a:I

    iput-object p1, p0, LY0/A;->b:Lcom/booklal/booklal/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    iget-object p2, p0, LY0/A;->b:Lcom/booklal/booklal/ChatActivity;

    iget v0, p0, LY0/A;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    sget-object v0, Lcom/booklal/booklal/ChatActivity;->B:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "token"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/ChatActivity;->x:Ljava/lang/String;

    iget-object p1, p2, Lcom/booklal/booklal/ChatActivity;->u:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/booklal/booklal/ChatActivity;->z:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p2, p2, Lcom/booklal/booklal/ChatActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lcom/booklal/booklal/ChatActivity;->v:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
