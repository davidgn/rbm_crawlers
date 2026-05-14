.class public Lcom/booklal/booklal/CategorySelection;
.super Lh/i;
.source "SourceFile"

# interfaces
.implements Lu2/l;
.implements Lk2/c;
.implements Lk2/d;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Ljava/lang/Double;

.field public B:Ljava/lang/Double;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Landroidx/cardview/widget/CardView;

.field public F:Landroidx/cardview/widget/CardView;

.field public G:Landroidx/cardview/widget/CardView;

.field public H:Landroidx/cardview/widget/CardView;

.field public I:Landroidx/cardview/widget/CardView;

.field public J:Landroidx/cardview/widget/CardView;

.field public K:Landroidx/cardview/widget/CardView;

.field public L:Landroidx/cardview/widget/CardView;

.field public M:Landroidx/cardview/widget/CardView;

.field public N:Landroidx/cardview/widget/CardView;

.field public O:Landroidx/cardview/widget/CardView;

.field public P:Landroidx/cardview/widget/CardView;

.field public Q:Landroidx/cardview/widget/CardView;

.field public R:Landroidx/cardview/widget/CardView;

.field public S:Landroidx/cardview/widget/CardView;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public e:Ll2/g;

.field public f:Landroid/widget/ImageView;

.field public l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field public o:Landroidx/drawerlayout/widget/DrawerLayout;

.field public p:Lcom/google/android/material/navigation/NavigationView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/view/View;

.field public v:Lde/hdodenhof/circleimageview/CircleImageView;

.field public w:Lde/hdodenhof/circleimageview/CircleImageView;

.field public x:Lcom/google/firebase/auth/FirebaseAuth;

.field public y:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902b1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

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

    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a5

    if-ne v0, v1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "name"

    const-string v1, "Support Team "

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09020c

    const-string v4, "users"

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LY0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    return v2

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09033f

    const-string v5, "https://play.google.com/store/apps/details?id="

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

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902e1

    if-ne v0, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090058

    const-string v5, "page"

    const-class v6, Lcom/booklal/booklal/ShowHTML;

    if-ne v0, v1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "about"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902a1

    if-ne v0, v1, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090309

    if-ne v0, v1, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "bug"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090334

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v3

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f3

    if-ne v0, v1, :cond_a

    return v2

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900fb

    const-string v5, "g2"

    const-string v6, "g1"

    if-ne v0, v1, :cond_e

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    new-instance v1, LY0/x;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, LY0/x;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_c
    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->C:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/booklal/booklal/CategorySelection;->D:Ljava/lang/String;

    if-eqz v1, :cond_d

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090336

    if-ne v0, v1, :cond_f

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/SellingItems;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ce

    if-ne p1, v0, :cond_10

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Dashboard;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_10
    return v3
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "g1"

    iget-object v2, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "g2"

    iget-object v2, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

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

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ChooseCategoryOfBook;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090275

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/NewBookActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090124

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->b:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->c:Ljava/lang/String;

    const p1, 0x7f0900c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lk2/d;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f0900f3

    invoke-virtual {p1, v0}, Lu2/k;->setSelectedItemId(I)V

    const p1, 0x7f09017b

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    const p1, 0x7f090269

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->p:Lcom/google/android/material/navigation/NavigationView;

    const p1, 0x7f0900f2

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->E:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900eb

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->F:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->G:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e7

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->H:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900f1

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->I:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900ed

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->J:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900ee

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->K:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900ec

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->L:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900ea

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->M:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e9

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->N:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->O:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->P:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e5

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->Q:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->R:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900f0

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->S:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0903c8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0903cb

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->s:Landroid/widget/TextView;

    const p1, 0x7f09014d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->s:Landroid/widget/TextView;

    const-string v0, "Explore Categories"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->p:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object p1, p1, Ls2/p;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->u:Landroid/view/View;

    const v0, 0x7f090265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->u:Landroid/view/View;

    const v0, 0x7f090263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->u:Landroid/view/View;

    const v0, 0x7f090264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->u:Landroid/view/View;

    const v0, 0x7f090262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->t:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->u:Landroid/view/View;

    const v0, 0x7f090266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->n:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

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

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->f:Landroid/widget/ImageView;

    const v0, 0x7f0903ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f090275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ll2/g;

    invoke-direct {v0, p0}, Ll2/g;-><init>(Lh/i;)V

    iput-object v0, p0, Lcom/booklal/booklal/CategorySelection;->e:Ll2/g;

    invoke-virtual {v0, p1}, Ll2/g;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lu2/l;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/w;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/x;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/w;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->n:Landroid/widget/LinearLayout;

    new-instance v0, LY0/w;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "ProfileImages/"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/booklal/booklal/CategorySelection;->z:Ljava/lang/String;

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

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY0/g;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->E:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->F:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->G:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->H:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->I:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->J:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->K:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->L:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->M:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->N:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->O:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->P:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->Q:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->R:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategorySelection;->S:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/w;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LY0/w;-><init>(Lcom/booklal/booklal/CategorySelection;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method
