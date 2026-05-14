.class public Lcom/booklal/booklal/PublicProfileActivity;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static F:Ljava/lang/Boolean;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public final E:I

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Lde/hdodenhof/circleimageview/CircleImageView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Lcom/google/firebase/auth/FirebaseAuth;

.field public w:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public x:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public y:Ljava/lang/String;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const/16 v0, 0x2714

    iput v0, p0, Lcom/booklal/booklal/PublicProfileActivity;->E:I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    const p1, 0x7f0903ca

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->p:Landroid/widget/ImageView;

    const p1, 0x7f0902c0

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->r:Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f0902c1

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->s:Landroid/widget/TextView;

    const p1, 0x7f0902c4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->t:Landroid/widget/TextView;

    const p1, 0x7f0902be

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f0900c1

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->A:Landroid/widget/TextView;

    const p1, 0x7f090363

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->B:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->o:Landroid/widget/ImageView;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f09014c

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->q:Landroid/widget/TextView;

    const-string v0, "User Profile"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const v1, 0x7f0902ea

    invoke-virtual {p0, v1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/booklal/booklal/PublicProfileActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/booklal/booklal/PublicProfileActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->v:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->w:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->x:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->v:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->w:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "users"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v1, p0, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v1, LY0/c;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_0
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v1, "ProfileImages/"

    invoke-virtual {p1, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, LY0/b;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, LY0/g;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LY0/g;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Loading Profile..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/PublicProfileActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/PublicProfileActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/PublicProfileActivity;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/booklal/booklal/PublicProfileActivity;->x:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "AllBook"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "user"

    iget-object v2, p0, Lcom/booklal/booklal/PublicProfileActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LE2/h;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, LE2/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->r:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/z0;-><init>(Lcom/booklal/booklal/PublicProfileActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->p:Landroid/widget/ImageView;

    new-instance v0, LY0/z0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/z0;-><init>(Lcom/booklal/booklal/PublicProfileActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileActivity;->o:Landroid/widget/ImageView;

    new-instance v0, LY0/z0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/z0;-><init>(Lcom/booklal/booklal/PublicProfileActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
