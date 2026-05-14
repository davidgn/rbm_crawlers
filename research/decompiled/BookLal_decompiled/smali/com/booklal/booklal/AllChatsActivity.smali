.class public Lcom/booklal/booklal/AllChatsActivity;
.super Lh/i;
.source "SourceFile"

# interfaces
.implements Lu2/l;
.implements Lk2/c;
.implements Lk2/d;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/TextView;

.field public C:Ljava/lang/Double;

.field public D:Ljava/lang/Double;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Lcom/google/firebase/database/FirebaseDatabase;

.field public H:Ljava/util/ArrayList;

.field public I:LY0/C0;

.field public J:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public final M:I

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
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const/16 v0, 0x2714

    iput v0, p0, Lcom/booklal/booklal/AllChatsActivity;->M:I

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09020c

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/h;

    const/4 v1, 0x1

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
    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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
    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

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

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    return v2

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090334

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

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

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900fb

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090336

    if-ne v0, v1, :cond_10

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/SellingItems;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_f

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v2

    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ce

    if-ne p1, v0, :cond_13

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Dashboard;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_12

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0903ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f090275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ll2/g;

    invoke-direct {v1, p0}, Ll2/g;-><init>(Lh/i;)V

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

    invoke-virtual {v1, v0}, Ll2/g;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    :cond_2
    const-string v1, "g1"

    iget-object v2, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "g2"

    iget-object v2, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

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

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->F:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

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

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090124

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->e:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->b:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->c:Ljava/lang/String;

    const p1, 0x7f0900c5

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lk2/d;)V

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f0900fb

    invoke-virtual {p1, v0}, Lu2/k;->setSelectedItemId(I)V

    const p1, 0x7f090101

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->A:Landroid/widget/ImageView;

    const p1, 0x7f090102

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->B:Landroid/widget/TextView;

    const p1, 0x7f090342

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->J:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    const v0, 0x7f0903cb

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0903c8

    :try_start_0
    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->s:Landroid/widget/TextView;

    const-string v1, "Messages"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v0

    invoke-virtual {v0}, LZ2/l;->S()V

    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->p:Lcom/google/android/material/navigation/NavigationView;

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object v0, v0, Ls2/p;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->u:Landroid/view/View;

    const v1, 0x7f090265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->u:Landroid/view/View;

    const v1, 0x7f090263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->u:Landroid/view/View;

    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->u:Landroid/view/View;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->u:Landroid/view/View;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/booklal/booklal/AllChatsActivity;->j()V

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lu2/l;)V

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, LY0/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LY0/f;-><init>(Lcom/booklal/booklal/AllChatsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-virtual {p1}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->i0()V

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->x:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->w:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/f;-><init>(Lcom/booklal/booklal/AllChatsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->n:Landroid/widget/LinearLayout;

    new-instance v0, LY0/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/f;-><init>(Lcom/booklal/booklal/AllChatsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "ProfileImages/"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/booklal/booklal/AllChatsActivity;->z:Ljava/lang/String;

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

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY0/g;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->G:Lcom/google/firebase/database/FirebaseDatabase;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->H:Ljava/util/ArrayList;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    iget-boolean v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    invoke-virtual {p1}, Lu0/F;->j0()V

    :goto_1
    iput-boolean v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->J:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-virtual {v0, p1}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setLayoutManager(Lu0/F;)V

    new-instance p1, LY0/C0;

    iget-object v0, p0, Lcom/booklal/booklal/AllChatsActivity;->H:Ljava/util/ArrayList;

    invoke-direct {p1}, LY0/C0;-><init>()V

    iput-object p0, p1, LY0/C0;->f:Landroid/content/Context;

    iput-object v0, p1, LY0/C0;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->I:LY0/C0;

    iget-object p1, p0, Lcom/booklal/booklal/AllChatsActivity;->G:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "USERS"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "stringTimeStamp"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->limitToLast(I)Lcom/google/firebase/database/Query;

    move-result-object p1

    new-instance v0, LK0/j;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "Catch exception"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
