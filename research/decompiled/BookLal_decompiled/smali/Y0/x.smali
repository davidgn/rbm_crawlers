.class public final LY0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/CategorySelection;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/CategorySelection;I)V
    .locals 0

    iput p2, p0, LY0/x;->a:I

    iput-object p1, p0, LY0/x;->b:Lcom/booklal/booklal/CategorySelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    iget p2, p0, LY0/x;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/x;->b:Lcom/booklal/booklal/CategorySelection;

    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/CategorySelection;->A:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategorySelection;->B:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->A:Ljava/lang/Double;

    const-string v1, ""

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategorySelection;->C:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->B:Ljava/lang/Double;

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategorySelection;->D:Ljava/lang/String;

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/x;->b:Lcom/booklal/booklal/CategorySelection;

    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->q:Landroid/widget/TextView;

    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/booklal/booklal/CategorySelection;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/booklal/booklal/CategorySelection;->r:Landroid/widget/TextView;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "coins"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p2, Lcom/booklal/booklal/CategorySelection;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
