.class public final LY0/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LE2/h;


# direct methods
.method public constructor <init>(LE2/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/A0;->b:LE2/h;

    iput p2, p0, LY0/A0;->a:I

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 7

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/A0;->b:LE2/h;

    iget-object v0, p2, LE2/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/PublicProfileActivity;

    const-string v1, "BookName"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->l:Ljava/lang/String;

    const-string v0, "BookDescription"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p2, LE2/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/PublicProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "displayURL1"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->e:Ljava/lang/String;

    const-string v1, "Symbol"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/booklal/booklal/PublicProfileActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SellingPrice"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->n:Ljava/lang/String;

    iget-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->b:Ljava/util/ArrayList;

    iget v2, p0, LY0/A0;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->e:Ljava/lang/String;

    const-string v3, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "displayURL2"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/PublicProfileActivity;->e:Ljava/lang/String;

    if-nez p1, :cond_1

    iput-object v3, v0, Lcom/booklal/booklal/PublicProfileActivity;->e:Ljava/lang/String;

    :cond_1
    iget-object p1, v0, Lcom/booklal/booklal/PublicProfileActivity;->c:Ljava/util/ArrayList;

    new-instance v1, LY0/D0;

    iget-object v3, v0, Lcom/booklal/booklal/PublicProfileActivity;->l:Ljava/lang/String;

    iget-object v4, v0, Lcom/booklal/booklal/PublicProfileActivity;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/booklal/booklal/PublicProfileActivity;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/booklal/booklal/PublicProfileActivity;->n:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, LY0/D0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/booklal/booklal/PublicProfileActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_2

    new-instance p1, LY0/C0;

    iget-object v1, v0, Lcom/booklal/booklal/PublicProfileActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, LY0/C0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, v0, Lcom/booklal/booklal/PublicProfileActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object p1, p2, LE2/h;->c:Ljava/lang/Object;

    check-cast p1, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
