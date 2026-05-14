.class public final LY0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public constructor <init>(LY0/Q;ILandroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LY0/u;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/u;->d:Lcom/google/android/gms/tasks/OnCompleteListener;

    iput p2, p0, LY0/u;->c:I

    iput-object p3, p0, LY0/u;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/OnCompleteListener;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, LY0/u;->a:I

    iput-object p1, p0, LY0/u;->d:Lcom/google/android/gms/tasks/OnCompleteListener;

    iput-object p2, p0, LY0/u;->b:Ljava/lang/Object;

    iput p3, p0, LY0/u;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 11

    iget p2, p0, LY0/u;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/u;->d:Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast p2, LY0/Q;

    iget-object v0, p2, LY0/Q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/SellingItems;

    const-string v1, "BookName"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/SellingItems;->n:Ljava/lang/String;

    const-string v0, "BookDescription"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, LY0/Q;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/SellingItems;

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->o:Ljava/lang/String;

    const-string v0, "displayURL1"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    const-string v0, "Symbol"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/booklal/booklal/SellingItems;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SellingPrice"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->q:Ljava/lang/String;

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    iget v1, p0, LY0/u;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->m:Ljava/lang/String;

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "displayURL2"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    if-nez p1, :cond_1

    iput-object v2, p2, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    :cond_1
    iget-object p1, p2, Lcom/booklal/booklal/SellingItems;->c:Ljava/util/ArrayList;

    new-instance v0, LY0/L0;

    iget-object v3, p2, Lcom/booklal/booklal/SellingItems;->n:Ljava/lang/String;

    iget-object v4, p2, Lcom/booklal/booklal/SellingItems;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/booklal/booklal/SellingItems;->m:Ljava/lang/String;

    iget-object v6, p2, Lcom/booklal/booklal/SellingItems;->l:Ljava/lang/String;

    iget-object v7, p2, Lcom/booklal/booklal/SellingItems;->q:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LY0/L0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_2

    new-instance p1, LY0/x0;

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->c:Ljava/util/ArrayList;

    invoke-direct {p1, p2, v0}, LY0/x0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p2, Lcom/booklal/booklal/SellingItems;->L:LY0/x0;

    invoke-virtual {p1}, Lu0/y;->d()V

    iget-object p1, p2, Lcom/booklal/booklal/SellingItems;->K:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/booklal/booklal/SellingItems;->L:LY0/x0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object p1, p0, LY0/u;->b:Ljava/lang/Object;

    check-cast p1, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/u;->d:Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast p2, LY0/v;

    iget-object v0, p2, LY0/v;->c:Lcom/booklal/booklal/CategoryBookListingActivity;

    const-string v1, "BookName"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->C:Ljava/lang/String;

    const-string v0, "BookDescription"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, LY0/v;->c:Lcom/booklal/booklal/CategoryBookListingActivity;

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->D:Ljava/lang/String;

    const-string v0, "Publication"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->p:Ljava/lang/String;

    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->t:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->u:Ljava/lang/Double;

    const-string v0, "City"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "Unknown"

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    :cond_3
    const-string v0, "displayURL1"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    const-string v0, "Symbol"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SellingPrice"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->x:Ljava/lang/String;

    const-string v0, "CountryCode"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "Author"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->E:Ljava/lang/String;

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_5

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "displayURL2"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    if-nez p1, :cond_5

    iput-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    :cond_5
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->t:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->u:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, LK1/a;->a(DDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_e

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    :cond_6
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_7

    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_7
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "USA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "LR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "MM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_9

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v2, " km away"

    invoke-static {p1, v0, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v4, ""

    invoke-static {p1, v0, v4}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double p1, v4, v2

    const/4 v0, 0x0

    if-gez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " meter away"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " meters away"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_1

    :cond_b
    :goto_0
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x409925604189374cL    # 1609.344

    cmpl-double p1, v6, v8

    const-string v0, " mile away"

    if-lez p1, :cond_d

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v4, v2

    if-lez p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v2, " miles away "

    invoke-static {p1, v0, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_1

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-static {p1, v2, v0}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_1

    :cond_d
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-static {p1, v2, v0}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    :goto_1
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    :cond_e
    new-instance p1, LY0/e;

    iget-object v3, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->C:Ljava/lang/String;

    iget-object v4, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->D:Ljava/lang/String;

    iget-object v6, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    iget-object v7, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    iget-object v8, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->p:Ljava/lang/String;

    iget-object v9, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->x:Ljava/lang/String;

    iget-object v10, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->E:Ljava/lang/String;

    iget-object v0, p0, LY0/u;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, LY0/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget p2, p0, LY0/u;->c:I

    if-ne p2, p1, :cond_f

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->A:LY0/j;

    invoke-virtual {p1}, Lu0/y;->d()V

    :cond_f
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/u;->d:Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast p2, LY0/v;

    iget-object v0, p2, LY0/v;->c:Lcom/booklal/booklal/CategoryBookListingActivity;

    const-string v1, "BookName"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->C:Ljava/lang/String;

    const-string v0, "BookDescription"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, LY0/v;->c:Lcom/booklal/booklal/CategoryBookListingActivity;

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->D:Ljava/lang/String;

    const-string v0, "Publication"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->p:Ljava/lang/String;

    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->t:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->u:Ljava/lang/Double;

    const-string v0, "City"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "Unknown"

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    :cond_10
    const-string v0, "displayURL1"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    const-string v0, "Symbol"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SellingPrice"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->x:Ljava/lang/String;

    const-string v0, "CountryCode"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "Author"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->E:Ljava/lang/String;

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    const-string v2, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    if-eq v0, v2, :cond_11

    if-nez v0, :cond_12

    :cond_11
    if-nez v0, :cond_12

    const-string v0, "displayURL2"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    if-nez p1, :cond_12

    iput-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    :cond_12
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->t:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->u:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, LK1/a;->a(DDDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_1b

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    :cond_13
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz p1, :cond_14

    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    :cond_14
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "USA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "LR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->w:Ljava/lang/String;

    const-string v0, "MM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto/16 :goto_2

    :cond_15
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_16

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v2, " km away"

    invoke-static {p1, v0, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto/16 :goto_3

    :cond_16
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v4, ""

    invoke-static {p1, v0, v4}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double p1, v4, v2

    const/4 v0, 0x0

    if-gez p1, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " meter away"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto/16 :goto_3

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " meters away"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_3

    :cond_18
    :goto_2
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x409925604189374cL    # 1609.344

    cmpl-double p1, v6, v8

    const-string v0, " mile away"

    if-lez p1, :cond_1a

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v4, v2

    if-lez p1, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    const-string v2, " miles away "

    invoke-static {p1, v0, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_3

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-static {p1, v2, v0}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    goto :goto_3

    :cond_1a
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->v:Ljava/lang/Double;

    invoke-static {p1, v2, v0}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    :goto_3
    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->f:Ljava/lang/String;

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    :cond_1b
    new-instance p1, LY0/e;

    iget-object v3, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->C:Ljava/lang/String;

    iget-object v4, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->D:Ljava/lang/String;

    iget-object v6, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->F:Ljava/lang/String;

    iget-object v7, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->N:Ljava/lang/String;

    iget-object v8, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->p:Ljava/lang/String;

    iget-object v9, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->x:Ljava/lang/String;

    iget-object v10, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->E:Ljava/lang/String;

    iget-object v0, p0, LY0/u;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, LY0/v;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, LY0/u;->c:I

    if-ne v0, p1, :cond_1c

    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance p1, LY0/j;

    invoke-direct {p1, v1, p2}, LY0/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->A:LY0/j;

    invoke-virtual {p1}, Lu0/y;->d()V

    iget-object p1, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, v1, Lcom/booklal/booklal/CategoryBookListingActivity;->A:LY0/j;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
