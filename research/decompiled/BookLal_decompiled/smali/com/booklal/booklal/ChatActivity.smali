.class public Lcom/booklal/booklal/ChatActivity;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static B:Ljava/lang/Boolean;

.field public static C:Ljava/lang/Boolean;

.field public static D:Ljava/lang/Boolean;


# instance fields
.field public A:Ljava/lang/String;

.field public b:LY0/x0;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/firebase/database/FirebaseDatabase;

.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:I

.field public r:Landroidx/appcompat/widget/Toolbar;

.field public s:Landroid/widget/TextView;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/booklal/booklal/ChatActivity;->C:Ljava/lang/Boolean;

    sput-object v0, Lcom/booklal/booklal/ChatActivity;->D:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/booklal/booklal/ChatActivity;->q:I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "blocked"

    const-string v1, "BLOCK_USER"

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->c:Ljava/util/ArrayList;

    const p1, 0x7f0900ff

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->l:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f09033c

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->m:Landroid/widget/ImageView;

    const p1, 0x7f09023b

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->n:Landroid/widget/EditText;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->o:Landroid/widget/ImageView;

    const p1, 0x7f0903ca

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->z:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "bookinfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/ChatActivity;->u:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    iput-object v2, p0, Lcom/booklal/booklal/ChatActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    new-instance v4, LY0/A;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LY0/A;-><init>(Lcom/booklal/booklal/ChatActivity;I)V

    invoke-virtual {v2, p0, v4}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    iget-object v2, p0, Lcom/booklal/booklal/ChatActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v4, "Operate"

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    const-string v4, "AUTHKEY"

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    new-instance v4, LY0/A;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, LY0/A;-><init>(Lcom/booklal/booklal/ChatActivity;I)V

    invoke-virtual {v2, p0, v4}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    iget-object v2, p0, Lcom/booklal/booklal/ChatActivity;->y:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    iget-object v3, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    new-instance v3, LY0/A;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LY0/A;-><init>(Lcom/booklal/booklal/ChatActivity;I)V

    invoke-virtual {v2, p0, v3}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "USERS"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    const v4, 0x7f09014c

    invoke-virtual {p0, v4}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    iput-object v4, p0, Lcom/booklal/booklal/ChatActivity;->r:Landroidx/appcompat/widget/Toolbar;

    const v4, 0x7f0903cc

    invoke-virtual {p0, v4}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/booklal/booklal/ChatActivity;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->r:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v4}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->z:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/booklal/booklal/ChatActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->s:Landroid/widget/TextView;

    const-string v5, "Error in Chat!"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v4

    invoke-virtual {v4}, LZ2/l;->S()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/booklal/booklal/ChatActivity;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-static {v4, v5, p1}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/booklal/booklal/ChatActivity;->e:Ljava/lang/String;

    new-instance v5, LY0/x0;

    iget-object v6, p0, Lcom/booklal/booklal/ChatActivity;->c:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/booklal/booklal/ChatActivity;->d:Ljava/lang/String;

    invoke-direct {v5}, LY0/x0;-><init>()V

    iput-object p0, v5, LY0/x0;->f:Landroid/content/Context;

    iput-object v6, v5, LY0/x0;->e:Ljava/util/ArrayList;

    iput-object v7, v5, LY0/x0;->l:Ljava/lang/Object;

    iput-object v4, v5, LY0/x0;->m:Ljava/lang/Object;

    iput-object v5, p0, Lcom/booklal/booklal/ChatActivity;->b:LY0/x0;

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->l:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/booklal/booklal/ChatActivity;->b:LY0/x0;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/booklal/booklal/ChatActivity;->f:Lcom/google/firebase/database/FirebaseDatabase;

    :try_start_0
    invoke-virtual {v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    iget-object v5, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    new-instance v5, Ly3/c;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Ly3/c;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->f:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {v4}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iget-object v4, p0, Lcom/booklal/booklal/ChatActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, Lz2/e;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Lz2/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    iget-object v0, p0, Lcom/booklal/booklal/ChatActivity;->f:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/ChatActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v1, LK0/j;

    const/16 v4, 0xd

    invoke-direct {v1, p0, v4}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    new-instance v0, LK0/j;

    const/16 v1, 0xe

    invoke-direct {v0, v3, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Catch ChatActivity exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/booklal/booklal/ChatActivity;->m:Landroid/widget/ImageView;

    new-instance v1, LY0/C;

    invoke-direct {v1, p0, p1, v2, v3}, LY0/C;-><init>(Lcom/booklal/booklal/ChatActivity;Ljava/lang/String;Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/ChatActivity;->s:Landroid/widget/TextView;

    new-instance v1, LB2/e;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/ChatActivity;->p:Landroid/widget/ImageView;

    new-instance v1, LA2/p;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChatActivity;->o:Landroid/widget/ImageView;

    new-instance v0, LA2/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, v3}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
