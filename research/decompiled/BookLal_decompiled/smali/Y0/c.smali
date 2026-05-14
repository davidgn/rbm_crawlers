.class public final LY0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/c;->a:I

    iput-object p1, p0, LY0/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 9

    iget v0, p0, LY0/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz p2, :cond_0

    const-string p1, "Take_Book_Information"

    const-string v0, "Snapshot error"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p2, "coins"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/Take_Book_Information;

    iput-boolean v0, v1, Lcom/booklal/booklal/Take_Book_Information;->e0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    const-wide/16 v4, 0x1

    cmp-long p2, v2, v4

    if-gez p2, :cond_2

    invoke-virtual {v1}, Lcom/booklal/booklal/Take_Book_Information;->p()V

    :cond_2
    const-string p2, "country_code"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->l:Ljava/lang/String;

    const-string p2, "city"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->m:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, "Unknown"

    iput-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->m:Ljava/lang/String;

    :cond_3
    const-string p2, "count"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->T:Ljava/lang/String;

    :cond_4
    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->W:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    iget-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setCountry(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->W:Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/scrounger/countrycurrencypicker/library/Buttons/CountryCurrencyButton;->setShowCurrency(Ljava/lang/Boolean;)V

    new-instance p1, Ljava/util/Locale;

    const-string p2, "en"

    iget-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->l:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->n:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->A:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->B:Landroid/widget/TextView;

    iget-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->A:Landroid/widget/TextView;

    iget-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v1, Lcom/booklal/booklal/Take_Book_Information;->B:Landroid/widget/TextView;

    iget-object p2, v1, Lcom/booklal/booklal/Take_Book_Information;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string p2, "btc"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "upi"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "paypal"

    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast v5, Lcom/booklal/booklal/SupportDeveloper;

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/booklal/booklal/SupportDeveloper;->p:Ljava/lang/String;

    iget-object v0, v5, Lcom/booklal/booklal/SupportDeveloper;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v5, Lcom/booklal/booklal/SupportDeveloper;->q:Ljava/lang/String;

    iget-object v0, v5, Lcom/booklal/booklal/SupportDeveloper;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p1, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/booklal/booklal/SupportDeveloper;->r:Ljava/lang/String;

    :cond_9
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string p2, "BookName"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/StatsActivity;

    iput-object p2, v0, Lcom/booklal/booklal/StatsActivity;->c:Ljava/lang/String;

    const-string p2, "Impressions"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Visits"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v1, :cond_a

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/booklal/booklal/StatsActivity;->f:J

    :cond_b
    iget-wide p1, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    const/4 p2, 0x1

    if-nez p1, :cond_c

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const/4 v3, 0x5

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p1

    iget-wide v3, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    goto :goto_1

    :cond_c
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const/16 v3, 0xa

    invoke-virtual {p1, p2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p1

    iget-wide v3, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    :goto_1
    iget-wide v3, v0, Lcom/booklal/booklal/StatsActivity;->f:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_d

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p1

    iget-wide v1, v0, Lcom/booklal/booklal/StatsActivity;->f:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/booklal/booklal/StatsActivity;->f:J

    :cond_d
    iget-boolean p1, v0, Lcom/booklal/booklal/StatsActivity;->r:Z

    if-nez p1, :cond_e

    iput-boolean p2, v0, Lcom/booklal/booklal/StatsActivity;->r:Z

    iget-object p1, v0, Lcom/booklal/booklal/StatsActivity;->o:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/booklal/booklal/StatsActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/booklal/booklal/StatsActivity;->p:Landroid/widget/TextView;

    iget-wide v1, v0, Lcom/booklal/booklal/StatsActivity;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/booklal/booklal/StatsActivity;->q:Landroid/widget/TextView;

    iget-wide v0, v0, Lcom/booklal/booklal/StatsActivity;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    :pswitch_2
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, LY0/S;

    iget-object v0, p2, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/ShowBookDetailsActivity;

    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, LY0/S;->d:Lh/i;

    check-cast p2, Lcom/booklal/booklal/ShowBookDetailsActivity;

    iput-object p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->J:Ljava/lang/String;

    iget-object p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->I:Ljava/lang/Boolean;

    iget-object p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    if-eqz p1, :cond_10

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->N:I

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    const-string v2, " "

    invoke-static {p1, v1, v2, v0}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    iget-object p2, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_f
    iget-object p1, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->w:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/booklal/booklal/ShowBookDetailsActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_2
    return-void

    :pswitch_3
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/SellingItems;

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->z:Landroid/widget/TextView;

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

    if-nez v1, :cond_11

    iget-object v1, p2, Lcom/booklal/booklal/SellingItems;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_11
    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->A:Landroid/widget/TextView;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const-string v0, "coins"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p2, Lcom/booklal/booklal/SellingItems;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_13
    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/SellingItems;->P:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/SellingItems;->Q:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->P:Ljava/lang/Double;

    const-string v1, ""

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/SellingItems;->Q:Ljava/lang/Double;

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    :cond_14
    return-void

    :pswitch_4
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, LY0/S;

    iget-object v0, p2, LY0/S;->d:Lh/i;

    check-cast v0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;

    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->A:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, LY0/S;->d:Lh/i;

    check-cast p2, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;

    iput-object p1, p2, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->G:Ljava/lang/String;

    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->F:Ljava/lang/Boolean;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->G:Ljava/lang/String;

    :cond_15
    return-void

    :pswitch_5
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/PublicProfileActivity;

    iget-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->v:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v0, "city"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->C:Ljava/lang/String;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->D:Ljava/lang/String;

    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pbio"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v3, p2, Lcom/booklal/booklal/PublicProfileActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    const-string v2, "isVerified"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, " "

    if-eqz v0, :cond_1a

    move v6, v3

    move-object v7, v4

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_18

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_17

    invoke-static {v7, v5}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_17
    invoke-static {v7}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_18
    if-eqz v7, :cond_1a

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/String;

    iget v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->E:I

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->s:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_19
    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_6
    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->C:Ljava/lang/String;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1b

    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->B:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_1b
    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->D:Ljava/lang/String;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1c

    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->B:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/booklal/booklal/PublicProfileActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    :goto_7
    if-eqz v1, :cond_1f

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v3, p1, :cond_1e

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_1d

    invoke-static {v4, v5}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    move-object v4, p1

    goto :goto_a

    :cond_1d
    invoke-static {v4}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1e
    if-eqz v4, :cond_1f

    iget-object p1, p2, Lcom/booklal/booklal/PublicProfileActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void

    :pswitch_6
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string p2, "username"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/ProfileActivity;

    if-eqz p2, :cond_20

    iget-object v1, v0, Lcom/booklal/booklal/ProfileActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    const-string p2, "pbio"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    if-eqz p2, :cond_23

    const-string v2, ""

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_22

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_21

    invoke-static {v2, v1}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_21
    invoke-static {v2}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_22
    if-eqz v2, :cond_23

    iget-object p2, v0, Lcom/booklal/booklal/ProfileActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    const-string p2, "isVerified"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "displayname"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v3, v0, Lcom/booklal/booklal/ProfileActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_24

    new-instance p2, Ljava/lang/String;

    iget v3, v0, Lcom/booklal/booklal/ProfileActivity;->s:I

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v1, p2}, LC/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, Lcom/booklal/booklal/ProfileActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_24
    iget-object p2, v0, Lcom/booklal/booklal/ProfileActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    :goto_d
    const-string p2, "email"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, v0, Lcom/booklal/booklal/ProfileActivity;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    iget-object p2, v0, Lcom/booklal/booklal/ProfileActivity;->e:Landroid/widget/TextView;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/booklal/booklal/ProfileActivity;->f:Landroid/widget/TextView;

    const-string v0, "country"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_7
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz p2, :cond_27

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/ManageOTP;

    iput-object p1, p2, Lcom/booklal/booklal/ManageOTP;->q:Ljava/lang/Boolean;

    :cond_28
    return-void

    :pswitch_8
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const-string p2, "displayname"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Edit_Profile_Activity;

    iput-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->u:Ljava/lang/String;

    const-string p2, "isVerified"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->A:Ljava/lang/Boolean;

    const-string p2, "gender"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->x:Ljava/lang/String;

    const-string p2, "dob"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->y:Ljava/lang/String;

    if-eqz p2, :cond_29

    iget-object v1, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->x:Ljava/lang/String;

    const-string v1, ""

    if-eqz p2, :cond_2a

    if-eq p2, v1, :cond_2a

    const-string v2, "Female"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->C:Landroid/widget/RadioGroup;

    const v2, 0x7f0902de

    invoke-virtual {p2, v2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2a
    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->u:Ljava/lang/String;

    if-eqz p2, :cond_2b

    iget-object v2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    const-string p2, "email"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->w:Ljava/lang/String;

    if-eqz p2, :cond_2c

    iget-object v2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->d:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2d

    iget-object v2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->l:Landroid/widget/TextView;

    const-string v2, "country"

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "isSeller"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    const-string p2, "pbio"

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->v:Ljava/lang/String;

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    :goto_e
    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->v:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_2f

    iget-object p2, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->v:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0xa

    if-ne p2, v2, :cond_2e

    const-string p2, " "

    invoke-static {v1, p2}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_f
    move-object v1, p2

    goto :goto_10

    :cond_2e
    invoke-static {v1}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->v:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :goto_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_2f
    if-eqz v1, :cond_30

    iget-object p1, v0, Lcom/booklal/booklal/Edit_Profile_Activity;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_30
    return-void

    :pswitch_9
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/CategoryBookListingActivity;

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->M:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    iget-object v1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_31

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    goto :goto_11

    :cond_31
    if-eqz v0, :cond_32

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    if-nez v0, :cond_33

    :cond_32
    if-eqz p1, :cond_33

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    if-eqz p1, :cond_33

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    const-string v1, ""

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    :cond_33
    :goto_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->b:Ljava/util/ArrayList;

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->P:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/booklal/booklal/CategoryBookListingActivity;->j(Ljava/util/ArrayList;)V

    new-instance p1, LY0/j;

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    invoke-direct {p1, p2, v0}, LY0/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->A:LY0/j;

    invoke-virtual {p1}, Lu0/y;->d()V

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->A:LY0/j;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LY0/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Lu0/I;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p2, Lcom/booklal/booklal/CategoryBookListingActivity;->R:Ljava/lang/Boolean;

    :cond_34
    return-void

    :pswitch_a
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/AllChatsActivity;

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->q:Landroid/widget/TextView;

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

    if-nez v1, :cond_35

    iget-object v1, p2, Lcom/booklal/booklal/AllChatsActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_35
    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->r:Landroid/widget/TextView;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    const-string v0, "coins"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p2, Lcom/booklal/booklal/AllChatsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_38

    :cond_37
    const-string v0, "Latitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->C:Ljava/lang/Double;

    const-string v0, "Longitude"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->D:Ljava/lang/Double;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->C:Ljava/lang/Double;

    const-string v1, ""

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/booklal/booklal/AllChatsActivity;->D:Ljava/lang/Double;

    invoke-static {p1, v0, v1}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    :cond_38
    return-void

    :pswitch_b
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object p2, p0, LY0/c;->b:Ljava/lang/Object;

    check-cast p2, Lcom/booklal/booklal/AdNotificationActivity;

    iget-object v0, p2, Lcom/booklal/booklal/AdNotificationActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string v0, "FileName"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/booklal/booklal/AdNotificationActivity;->d:Ljava/lang/String;

    const-string v0, "URL"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    iput-object v0, p2, Lcom/booklal/booklal/AdNotificationActivity;->o:Ljava/lang/String;

    :cond_39
    const-string v0, "NotfName"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object v0, p2, Lcom/booklal/booklal/AdNotificationActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    iget-object p1, p2, Lcom/booklal/booklal/AdNotificationActivity;->c:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v0, "NotfAd/"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iget-object p2, p2, Lcom/booklal/booklal/AdNotificationActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, LY0/b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, LY0/a;

    invoke-direct {p2, p0, v0}, LY0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_3b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
