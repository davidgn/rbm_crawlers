.class public Lcom/booklal/booklal/SellingItems;
.super Lh/i;
.source "SourceFile"

# interfaces
.implements Lu2/l;
.implements Lk2/c;
.implements Lk2/d;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Lde/hdodenhof/circleimageview/CircleImageView;

.field public F:Lde/hdodenhof/circleimageview/CircleImageView;

.field public G:Lcom/google/firebase/auth/FirebaseAuth;

.field public H:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public I:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public J:Ljava/lang/String;

.field public K:Landroidx/recyclerview/widget/RecyclerView;

.field public L:LY0/x0;

.field public M:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public N:Landroid/widget/ImageView;

.field public O:Landroid/widget/TextView;

.field public P:Ljava/lang/Double;

.field public Q:Ljava/lang/Double;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public final T:I

.field public U:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public s:Ll2/g;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroidx/drawerlayout/widget/DrawerLayout;

.field public y:Lcom/google/android/material/navigation/NavigationView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const/16 v0, 0x2714

    iput v0, p0, Lcom/booklal/booklal/SellingItems;->T:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902b1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09038b

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/SupportDeveloper;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a5

    if-ne v0, v1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/booklal/booklal/SellingItems;->T:I

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "Support Team "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09020c

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->H:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, LY0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    return v2

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09033f

    const-string v4, "https://play.google.com/store/apps/details?id="

    if-ne v0, v1, :cond_4

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, "Share Via"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Share via"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902e1

    if-ne v0, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable To Open. \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090058

    const-string v4, "page"

    const-class v5, Lcom/booklal/booklal/ShowHTML;

    if-ne v0, v1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "about"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902a1

    if-ne v0, v1, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090309

    if-ne v0, v1, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "bug"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090334

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v3

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f3

    const-string v4, "g2"

    const-string v5, "g1"

    if-ne v0, v1, :cond_c

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/CategorySelection;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "ONNNNNNNNNN"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900fb

    if-ne v0, v1, :cond_f

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    if-eqz v1, :cond_e

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090336

    if-ne v0, v1, :cond_10

    return v2

    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ce

    if-ne p1, v0, :cond_13

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Dashboard;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    if-eqz v1, :cond_12

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_13
    return v3
.end method

.method public final j()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->I:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "AllBook"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "user"

    iget-object v2, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/Q;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LY0/Q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    :cond_2
    const-string v1, "g1"

    iget-object v2, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "g2"

    iget-object v2, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903ef

    const-string v2, "g2"

    const-string v3, "g1"

    if-ne v0, v1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->R:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->S:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090275

    if-ne v0, v1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/NewBookActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090124

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->r:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f090336

    invoke-virtual {p1, v0}, Lu2/k;->setSelectedItemId(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->e:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->U:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const p1, 0x7f0900c8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->r:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lk2/d;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->r:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f090336

    invoke-virtual {p1, v0}, Lu2/k;->setSelectedItemId(I)V

    const p1, 0x7f0900bd

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->N:Landroid/widget/ImageView;

    const p1, 0x7f0900be

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->O:Landroid/widget/TextView;

    const p1, 0x7f0903cb

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->B:Landroid/widget/TextView;

    const p1, 0x7f09014d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f0903c8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->E:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->B:Landroid/widget/TextView;

    const-string v0, "Books You Selling"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f0902eb

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->K:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f09026a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->y:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object p1, p1, Ls2/p;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->D:Landroid/view/View;

    const v0, 0x7f090265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->z:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->D:Landroid/view/View;

    const v0, 0x7f090263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->A:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->D:Landroid/view/View;

    const v0, 0x7f090264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->F:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->D:Landroid/view/View;

    const v0, 0x7f090262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->C:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->D:Landroid/view/View;

    const v0, 0x7f090266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->w:Landroid/widget/LinearLayout;

    const p1, 0x7f09017d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->K:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->K:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    if-nez p1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->t:Landroid/widget/ImageView;

    const v0, 0x7f0903ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f090275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ll2/g;

    invoke-direct {v0, p0}, Ll2/g;-><init>(Lh/i;)V

    iput-object v0, p0, Lcom/booklal/booklal/SellingItems;->s:Ll2/g;

    invoke-virtual {v0, p1}, Ll2/g;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->H:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->I:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->G:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->H:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->F:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/M0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/M0;-><init>(Lcom/booklal/booklal/SellingItems;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->w:Landroid/widget/LinearLayout;

    new-instance v0, LY0/M0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/M0;-><init>(Lcom/booklal/booklal/SellingItems;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "ProfileImages/"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/booklal/booklal/SellingItems;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/b;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LY0/g;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->y:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lu2/l;)V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->y:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/booklal/booklal/SellingItems;->E:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/M0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/M0;-><init>(Lcom/booklal/booklal/SellingItems;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902dc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/booklal/booklal/SellingItems;->M:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, LC4/o;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(LD0/j;)V

    invoke-virtual {p0}, Lcom/booklal/booklal/SellingItems;->j()V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "isChatSeen"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    new-instance v0, LK0/j;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_2

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p1}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
