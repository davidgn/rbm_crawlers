.class public Lcom/booklal/booklal/CategoryBookListingActivity;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public A:LY0/j;

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Landroid/widget/ImageView;

.field public H:Ljava/lang/String;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/ProgressBar;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Lcom/google/firebase/firestore/DocumentSnapshot;

.field public P:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public Q:Ljava/lang/Boolean;

.field public R:Ljava/lang/Boolean;

.field public S:I

.field public T:I

.field public U:I

.field public V:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/google/firebase/auth/FirebaseAuth;

.field public n:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Landroidx/appcompat/widget/Toolbar;

.field public r:Ljava/lang/Double;

.field public s:Ljava/lang/Double;

.field public t:Ljava/lang/Double;

.field public u:Ljava/lang/Double;

.field public v:Ljava/lang/Double;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->Q:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->R:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final j(Ljava/util/ArrayList;)V
    .locals 7

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->L:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->L:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0xa

    const-string v3, "time"

    const-string v4, "BookCategory"

    const-string v5, "CountryCode"

    const-string v6, "AllBook"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v6, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iget-object v5, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    sget-object v4, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LY0/v;-><init>(Lcom/booklal/booklal/CategoryBookListingActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v6, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iget-object v5, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    sget-object v4, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iget-object v3, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->O:Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/Query;->startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LY0/v;-><init>(Lcom/booklal/booklal/CategoryBookListingActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    const-string v0, "cat"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->G:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->q:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f090209

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->L:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "upsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UPSC"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "jee"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "IIT-JEE"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "ComputerScience"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Computer Science"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "Medical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Medical Science"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "Health"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Health & Fitness"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "Art"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Art & Music"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    const-string v0, "Business"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Business & Finance"

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->q:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f090277

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->K:Landroid/widget/ImageView;

    const p1, 0x7f090279

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->I:Landroid/widget/TextView;

    const p1, 0x7f09027b

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->J:Landroid/widget/TextView;

    const p1, 0x7f0902e9

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0902db

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->V:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_7
    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->V:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, LC4/o;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(LD0/j;)V

    iget-object p1, p0, Lcom/booklal/booklal/CategoryBookListingActivity;->G:Landroid/widget/ImageView;

    new-instance v0, LB2/e;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
