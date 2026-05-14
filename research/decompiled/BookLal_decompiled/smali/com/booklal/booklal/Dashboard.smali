.class public Lcom/booklal/booklal/Dashboard;
.super Lh/i;
.source "SourceFile"

# interfaces
.implements Lu2/l;
.implements Lk2/c;
.implements Lk2/d;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static G0:I = 0x1

.field public static H0:I


# instance fields
.field public A:Ll2/g;

.field public A0:Landroid/widget/ProgressBar;

.field public B:Landroid/widget/ImageView;

.field public B0:Lcom/google/firebase/firestore/DocumentSnapshot;

.field public C:Ljava/lang/String;

.field public C0:Ljava/util/ArrayList;

.field public D:Ljava/lang/String;

.field public D0:Ljava/util/ArrayList;

.field public E:Ljava/lang/Double;

.field public E0:Ljava/util/ArrayList;

.field public F:Ljava/lang/Double;

.field public final F0:Ljava/util/HashSet;

.field public G:Ljava/lang/Double;

.field public H:Ljava/lang/Double;

.field public I:Ljava/lang/Double;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Landroidx/recyclerview/widget/RecyclerView;

.field public N:LY0/j;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public final V:Ljava/lang/Double;

.field public W:Lcom/google/firebase/database/FirebaseDatabase;

.field public X:Ld3/a;

.field public Y:Lcom/google/firebase/firestore/DocumentSnapshot;

.field public Z:D

.field public a0:Z

.field public b:Ljava/util/ArrayList;

.field public b0:Z

.field public final c:Ljava/util/ArrayList;

.field public c0:Z

.field public d:Landroid/widget/LinearLayout;

.field public d0:Ljava/lang/Boolean;

.field public e:Landroid/widget/LinearLayout;

.field public e0:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/ImageView;

.field public h0:Landroid/widget/ImageView;

.field public i0:Landroid/widget/ImageView;

.field public j0:Landroid/widget/EditText;

.field public k0:Landroidx/appcompat/widget/SearchView;

.field public l:Ljava/lang/String;

.field public l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public m:Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o:Landroidx/drawerlayout/widget/DrawerLayout;

.field public o0:Ljava/lang/String;

.field public p:Lcom/google/android/material/navigation/NavigationView;

.field public p0:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public q:Landroid/widget/TextView;

.field public q0:Landroid/widget/Switch;

.field public r:Landroid/widget/TextView;

.field public r0:Ljava/lang/Double;

.field public s:Landroid/widget/TextView;

.field public s0:Ljava/lang/Double;

.field public t:Landroid/view/View;

.field public t0:Ljava/lang/String;

.field public u:Lcom/google/firebase/auth/FirebaseAuth;

.field public u0:Ljava/lang/String;

.field public v:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public v0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public w:Ljava/lang/String;

.field public w0:Ljava/lang/Boolean;

.field public x:Lde/hdodenhof/circleimageview/CircleImageView;

.field public x0:I

.field public y:Lde/hdodenhof/circleimageview/CircleImageView;

.field public y0:I

.field public z:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lh/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    const-wide v0, 0x40c3880000000000L    # 10000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->V:Ljava/lang/Double;

    const-wide/high16 v0, 0x4006000000000000L    # 2.75

    iput-wide v0, p0, Lcom/booklal/booklal/Dashboard;->Z:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/booklal/booklal/Dashboard;->a0:Z

    iput-boolean v0, p0, Lcom/booklal/booklal/Dashboard;->b0:Z

    iput-boolean v0, p0, Lcom/booklal/booklal/Dashboard;->c0:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->d0:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->w0:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    return-void
.end method

.method public static j(Lcom/booklal/booklal/Dashboard;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, v0, Lcom/booklal/booklal/Dashboard;->c0:Z

    goto/16 :goto_3

    :cond_0
    sget v4, Lcom/booklal/booklal/Dashboard;->H0:I

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget v5, Lcom/booklal/booklal/Dashboard;->H0:I

    :goto_0
    if-ge v5, v4, :cond_c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v7, "https://firebasestorage.googleapis.com/v0/b/booklal.appspot.com/o/DEFAULTBOOK.png?alt=media&token=5b390670-f1fe-4678-ad0f-5d65d89ed66c"

    iput-object v7, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v8, "BookName"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    const-string v8, "BookDescription"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    const-string v8, "Publication"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    const-string v8, "Latitude"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    const-string v8, "Longitude"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    const-string v8, "displayURL1"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    const-string v8, "Symbol"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/booklal/booklal/Dashboard;->L:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "SellingPrice"

    invoke-virtual {v6, v9}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    const-string v8, "CountryCode"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v8, "Author"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    iget-object v8, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, "displayURL2"

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    if-nez v6, :cond_3

    iput-object v7, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    :cond_3
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->G:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->H:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v11 .. v18}, LK1/a;->a(DDDD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    :cond_4
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    if-eqz v6, :cond_8

    const-string v9, "US"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v9, "GB"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v9, "USA"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v9, "LR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->J:Ljava/lang/String;

    const-string v9, "MM"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide v15, 0x409925604189374cL    # 1609.344

    cmpl-double v6, v13, v15

    const-string v9, " mile away"

    if-lez v6, :cond_7

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    cmpl-double v6, v13, v7

    if-lez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v8, " miles away "

    invoke-static {v6, v7, v8}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-static {v6, v7, v9}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-static {v6, v7, v9}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide v15, 0x407f400000000000L    # 500.0

    cmpl-double v6, v13, v15

    if-lez v6, :cond_9

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    mul-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v8, " km away"

    invoke-static {v6, v7, v8}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    const-string v11, ""

    invoke-static {v6, v9, v11}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->I:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v6, v11, v7

    if-gez v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " meter away"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    goto :goto_1

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " meters away"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    :goto_1
    iget-object v6, v0, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    new-instance v15, LY0/e;

    iget-object v8, v0, Lcom/booklal/booklal/Dashboard;->P:Ljava/lang/String;

    iget-object v9, v0, Lcom/booklal/booklal/Dashboard;->Q:Ljava/lang/String;

    iget-object v11, v0, Lcom/booklal/booklal/Dashboard;->S:Ljava/lang/String;

    iget-object v12, v0, Lcom/booklal/booklal/Dashboard;->n:Ljava/lang/String;

    iget-object v13, v0, Lcom/booklal/booklal/Dashboard;->C:Ljava/lang/String;

    iget-object v14, v0, Lcom/booklal/booklal/Dashboard;->K:Ljava/lang/String;

    iget-object v7, v0, Lcom/booklal/booklal/Dashboard;->R:Ljava/lang/String;

    move-object/from16 v16, v7

    move-object v7, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v7 .. v15}, LY0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, -0x1

    if-ne v5, v2, :cond_b

    iget-object v2, v0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/booklal/booklal/Dashboard;->c0:Z

    :cond_b
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    invoke-virtual {v1}, Lu0/y;->d()V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/booklal/booklal/Dashboard;->c0:Z

    sput v4, Lcom/booklal/booklal/Dashboard;->H0:I

    :goto_3
    return-void
.end method

.method public static k(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static m(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0902b1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09038b

    if-ne v0, v2, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/SupportDeveloper;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a5

    if-ne v0, v2, :cond_2

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

    return v3

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09020c

    const-string v4, "users"

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->v:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "token"

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09033f

    const-string v5, "https://play.google.com/store/apps/details?id="

    if-ne v0, v2, :cond_4

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "Best free marketplace to Buy/Sell used books in your nearby."

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    const-string v2, "Error:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v3

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0902e1

    if-ne v0, v2, :cond_5

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

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable To Open. \n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return v3

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090058

    const-string v5, "page"

    const-class v6, Lcom/booklal/booklal/ShowHTML;

    if-ne v0, v2, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "about"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0902a1

    if-ne v0, v2, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090309

    if-ne v0, v2, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "bug"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090334

    if-ne v0, v2, :cond_9

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900f3

    const-string v5, "g2"

    const-string v6, "g1"

    if-ne v0, v2, :cond_a

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/CategorySelection;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900fb

    if-ne v0, v2, :cond_e

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->v:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v2, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, LY0/G;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, LY0/G;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_c
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->t0:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/booklal/booklal/Dashboard;->u0:Ljava/lang/String;

    if-eqz v2, :cond_d

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090336

    if-ne v0, v2, :cond_f

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/SellingItems;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v3

    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ce

    if-ne p1, v0, :cond_10

    return v3

    :cond_10
    return v1
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v3, v0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/booklal/booklal/Dashboard;->q0:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const-string v5, "CountryCode"

    const-string v6, "AllBook"

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/booklal/booklal/Dashboard;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    new-instance v3, LI1/a;

    iget-object v4, v0, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v4, v0, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v3, v7, v8, v9, v10}, LI1/a;-><init>(DD)V

    iget-object v4, v0, Lcom/booklal/booklal/Dashboard;->V:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget v9, LK1/a;->a:I

    const-wide v9, 0x40fafee000000000L    # 110574.0

    div-double v9, v7, v9

    iget-wide v11, v3, LI1/a;->a:D

    add-double v13, v11, v9

    move-object/from16 v16, v3

    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    sub-double/2addr v11, v9

    const-wide v2, -0x3fa9800000000000L    # -90.0

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    const-wide v19, 0x417313c5a0000000L    # 2.000393E7

    div-double v19, v19, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v2, v19, v21

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    const-wide v5, 0x405b800000000000L    # 110.0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v7, v8, v13, v14}, LL4/l;->e(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    mul-int/lit8 v3, v3, 0x2

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-static {v7, v8, v11, v12}, LL4/l;->e(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v6, v11

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v2

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    move-object/from16 v5, v16

    iget-wide v11, v5, LI1/a;->a:D

    add-double v13, v11, v9

    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double v9, v11, v9

    const-wide v13, -0x3fa9800000000000L    # -90.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v0, v1}, LK1/a;->b(DD)D

    move-result-wide v13

    invoke-static {v7, v8, v9, v10}, LK1/a;->b(DD)D

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v13, LJ1/a;

    iget-wide v14, v5, LI1/a;->b:D

    move-object/from16 v23, v13

    move-wide/from16 v24, v11

    move-wide/from16 v26, v14

    move/from16 v28, v3

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v5, LJ1/a;

    sub-double v17, v14, v6

    invoke-static/range {v17 .. v18}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    move-object/from16 v21, v4

    new-instance v4, LJ1/a;

    add-double/2addr v6, v14

    invoke-static {v6, v7}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v11, LJ1/a;

    move-object/from16 v23, v11

    move-wide/from16 v24, v0

    move-wide/from16 v26, v14

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v12, LJ1/a;

    invoke-static/range {v17 .. v18}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    move-object/from16 v22, v12

    new-instance v12, LJ1/a;

    invoke-static {v6, v7}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v0, LJ1/a;

    move-object/from16 v23, v0

    move-wide/from16 v24, v9

    move-wide/from16 v26, v14

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v1, LJ1/a;

    invoke-static/range {v17 .. v18}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    new-instance v14, LJ1/a;

    invoke-static {v6, v7}, LK1/a;->c(D)D

    move-result-wide v26

    move-object/from16 v23, v14

    invoke-direct/range {v23 .. v28}, LJ1/a;-><init>(DDI)V

    invoke-static {v13, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    invoke-static {v3, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, LJ1/b;->c(LJ1/a;I)LJ1/b;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ1/b;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ1/b;

    if-eq v3, v5, :cond_1

    invoke-virtual {v3, v5}, LJ1/b;->a(LJ1/b;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v3}, LJ1/b;->a(LJ1/b;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, LJ1/b;->b(LJ1/b;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v3}, LJ1/b;->b(LJ1/b;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    move-object v1, v3

    move-object v2, v5

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, LJ1/b;->a(LJ1/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, LJ1/b;

    iget-object v1, v1, LJ1/b;->a:Ljava/lang/String;

    iget-object v2, v2, LJ1/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, LJ1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v2}, LJ1/b;->a(LJ1/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, LJ1/b;

    iget-object v2, v2, LJ1/b;->a:Ljava/lang/String;

    iget-object v1, v1, LJ1/b;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, LJ1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, LJ1/b;->b(LJ1/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v1}, LJ1/b;->b(LJ1/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t join these 2 queries: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/b;

    new-instance v2, LI1/b;

    iget-object v3, v1, LJ1/b;->a:Ljava/lang/String;

    iget-object v1, v1, LJ1/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, LI1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object/from16 v1, v21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI1/b;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v4

    iget-object v6, v3, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-virtual {v4, v7, v6}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v4

    const-string v6, "geohash"

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object v4

    iget-object v6, v2, LI1/b;->a:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/firebase/firestore/Query;->startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v4

    iget-object v2, v2, LI1/b;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/Query;->endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object/from16 v3, p0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/O;

    move-object/from16 v6, p1

    move-object/from16 v4, v16

    invoke-direct {v2, v3, v0, v4, v6}, LY0/O;-><init>(Lcom/booklal/booklal/Dashboard;Ljava/util/ArrayList;LI1/a;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    :cond_b
    move-object v3, v0

    move-object v7, v5

    move-object v5, v6

    move-object v6, v1

    iget-object v0, v3, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    const-wide/16 v1, 0x6

    const-string v8, "time"

    if-nez v0, :cond_c

    iget-object v0, v3, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v5, v3, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    sget-object v5, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0, v8, v5}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/P;

    invoke-direct {v1, v3, v6, v4}, LY0/P;-><init>(Lcom/booklal/booklal/Dashboard;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    :cond_c
    iget-object v0, v3, Lcom/booklal/booklal/Dashboard;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v3, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    if-nez v0, :cond_d

    iput-boolean v4, v3, Lcom/booklal/booklal/Dashboard;->c0:Z

    return-void

    :cond_d
    iget-object v0, v3, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    sget-object v4, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0, v8, v4}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/Query;->startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/P;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v6, v2}, LY0/P;-><init>(Lcom/booklal/booklal/Dashboard;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_6
    return-void
.end method

.method public final n()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "IN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->o0:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->E0:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->E0:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LY0/J;

    invoke-direct {v3, v0}, LY0/J;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, v1, Lcom/booklal/booklal/Dashboard;->a0:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/booklal/booklal/Dashboard;->a0:Z

    :try_start_0
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x0

    cmpl-double v4, v10, v2

    if-eqz v4, :cond_1a

    cmpl-double v2, v12, v2

    if-nez v2, :cond_7

    goto/16 :goto_b

    :cond_7
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->X:Ld3/a;

    iget-wide v14, v1, Lcom/booklal/booklal/Dashboard;->Z:D

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ld3/a;->c:Lorg/json/JSONArray;

    if-nez v2, :cond_8

    goto/16 :goto_b

    :cond_8
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v2, v10, v2

    if-ltz v2, :cond_1a

    const-wide v2, 0x4042800000000000L    # 37.0

    cmpl-double v2, v10, v2

    if-gtz v2, :cond_1a

    const-wide v2, 0x4050c00000000000L    # 67.0

    cmpg-double v2, v12, v2

    if-ltz v2, :cond_1a

    const-wide v2, 0x4058800000000000L    # 98.0

    cmpl-double v2, v12, v2

    if-lez v2, :cond_9

    goto/16 :goto_b

    :cond_9
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    :try_start_1
    sget-object v3, Ld3/a;->c:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_1a

    sget-object v3, Ld3/a;->c:Lorg/json/JSONArray;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "coordinates"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "LineString"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :sswitch_1
    const-string v3, "Polygon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v6

    goto :goto_2

    :sswitch_2
    const-string v3, "MultiLineString"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v0

    goto :goto_2

    :sswitch_3
    const-string v3, "MultiPolygon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_13

    if-eq v3, v0, :cond_11

    if-eq v3, v6, :cond_f

    if-eq v3, v5, :cond_c

    :cond_b
    move/from16 v19, v8

    goto/16 :goto_9

    :cond_c
    move v6, v2

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_b

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    move v4, v2

    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_e

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    move/from16 v16, v4

    move-wide v4, v10

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-wide v6, v12

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Ld3/a;->r(Lorg/json/JSONArray;DDD)Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v4, v16, 0x1

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_4

    :cond_e
    move/from16 v17, v6

    move/from16 v19, v8

    move-object/from16 v20, v9

    add-int/lit8 v6, v17, 0x1

    goto :goto_3

    :cond_f
    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v2

    :goto_5
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_19

    move-object/from16 v9, v20

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    move-wide v4, v10

    move-wide v6, v12

    move/from16 v16, v8

    move-object/from16 v20, v9

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Ld3/a;->r(Lorg/json/JSONArray;DDD)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v16, 0x1

    goto :goto_5

    :cond_11
    move/from16 v19, v8

    move-object/from16 v20, v9

    move v8, v2

    :goto_6
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_19

    move-object/from16 v9, v20

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    move-wide v4, v10

    move-wide v6, v12

    move/from16 v17, v8

    move-object/from16 v16, v9

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Ld3/a;->r(Lorg/json/JSONArray;DDD)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v20, v16

    goto :goto_6

    :cond_13
    move/from16 v19, v8

    move-object/from16 v16, v9

    move-object/from16 v3, v16

    move-wide v4, v10

    move-wide v6, v12

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Ld3/a;->r(Lorg/json/JSONArray;DDD)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_19

    :goto_7
    iget-object v0, v1, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->Y:Lcom/google/firebase/firestore/DocumentSnapshot;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_8

    :cond_15
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Blocked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    return-void

    :cond_16
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "blockedBy"

    const-string v5, "Automatic"

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "displayname"

    const-string v5, "Account Suspended"

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "blockedMonthYear"

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "blockedSource"

    const-string v5, "border"

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "token"

    const-string v5, ""

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "_name"

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v2, v1, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "users"

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, LY0/G;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, LY0/G;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_18
    :goto_8
    return-void

    :cond_19
    :goto_9
    add-int/lit8 v8, v19, 0x1

    goto/16 :goto_0

    :goto_a
    const-string v2, "BorderChecker"

    const-string v3, "Border check error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1a
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e2b361f -> :sswitch_3
        -0x2560d4e2 -> :sswitch_2
        0x4b86ed1a -> :sswitch_1
        0x6bb01145 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->j0:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->h0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/booklal/booklal/Dashboard;->m(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

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

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090124

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

    invoke-virtual {p1}, Lh/B;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->l:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->m:Ljava/lang/String;

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    const-string v0, "userState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->o0:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    const-string v0, "allDevices"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->v:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance p1, Ld3/a;

    const-string v0, "BorderChecker"

    const-string v1, "features"

    const/16 v2, 0xb

    invoke-direct {p1, v2}, Ld3/a;-><init>(I)V

    sget-object v2, Ld3/a;->c:Lorg/json/JSONArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "india_state_borders.json"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "GeometryCollection"

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "geometries"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sput-object v1, Ld3/a;->c:Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sput-object v2, Ld3/a;->c:Lorg/json/JSONArray;

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    sget-object v4, Ld3/a;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "geometry"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded border geometries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ld3/a;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, "Border data load failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->X:Ld3/a;

    new-instance p1, LY0/E;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LY0/E;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->p0:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LY0/H;-><init>(Lh/i;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, LY0/I;

    invoke-direct {v1, p1, v2}, LY0/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const p1, 0x7f09017a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    const p1, 0x7f090267

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->p:Lcom/google/android/material/navigation/NavigationView;

    const p1, 0x7f090366

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->q0:Landroid/widget/Switch;

    const p1, 0x7f0903c7

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->x:Lde/hdodenhof/circleimageview/CircleImageView;

    const p1, 0x7f09014b

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f0903c9

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->h0:Landroid/widget/ImageView;

    const p1, 0x7f090091

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    const v0, 0x7f090326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->i0:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    const v0, 0x7f09032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->j0:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->p:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->l:Ls2/p;

    iget-object p1, p1, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->t:Landroid/view/View;

    const v0, 0x7f090265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->t:Landroid/view/View;

    const v0, 0x7f090263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->r:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->t:Landroid/view/View;

    const v0, 0x7f090264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->t:Landroid/view/View;

    const v0, 0x7f090262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->s:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->t:Landroid/view/View;

    const v0, 0x7f090266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->f:Landroid/widget/LinearLayout;

    const p1, 0x7f090276

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->g0:Landroid/widget/ImageView;

    const p1, 0x7f090278

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->e0:Landroid/widget/TextView;

    const p1, 0x7f09027a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->f0:Landroid/widget/TextView;

    const p1, 0x7f0900c4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->z:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lk2/d;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->z:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f0901ce

    invoke-virtual {p1, v0}, Lu2/k;->setSelectedItemId(I)V

    const p1, 0x7f0902e7

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f090209

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    const p1, 0x7f0900af

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->i0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    new-instance v1, LY0/M;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f0902da

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

    if-nez v0, :cond_5

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

    iput-object v1, p0, Lcom/booklal/booklal/Dashboard;->B:Landroid/widget/ImageView;

    const v1, 0x7f0903ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/booklal/booklal/Dashboard;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f090275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/booklal/booklal/Dashboard;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/booklal/booklal/Dashboard;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/booklal/booklal/Dashboard;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/booklal/booklal/Dashboard;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ll2/g;

    invoke-direct {v1, p0}, Ll2/g;-><init>(Lh/i;)V

    iput-object v1, p0, Lcom/booklal/booklal/Dashboard;->A:Ll2/g;

    invoke-virtual {v1, v0}, Ll2/g;->setContentView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->v:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    new-instance v1, LY0/S;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, LY0/S;-><init>(Lh/i;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    goto :goto_5

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_7

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, LB/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->y:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, LY0/M;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->f:Landroid/widget/LinearLayout;

    new-instance v1, LY0/M;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LY0/M;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string v0, "ProfileImages/"

    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/booklal/booklal/Dashboard;->w:Ljava/lang/String;

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

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LY0/g;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->q0:Landroid/widget/Switch;

    new-instance v0, LY0/F;

    invoke-direct {v0, p0}, LY0/F;-><init>(Lcom/booklal/booklal/Dashboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->l0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, LY0/L;

    invoke-direct {v0, p0}, LY0/L;-><init>(Lcom/booklal/booklal/Dashboard;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(LD0/j;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lu2/l;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->p:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->x:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v0, LY0/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    new-instance v0, LY0/M;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LY0/M;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GetCurrentLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "IN"

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->m0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LA2/h;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget-object p1, p0, Lcom/booklal/booklal/Dashboard;->k0:Landroidx/appcompat/widget/SearchView;

    new-instance v0, LY0/L;

    invoke-direct {v0, p0}, LY0/L;-><init>(Lcom/booklal/booklal/Dashboard;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Ll/P0;)V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/Dashboard;->W:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/booklal/booklal/Dashboard;->W:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "USERS"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    new-instance v0, LK0/j;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    :cond_9
    return-void
.end method
