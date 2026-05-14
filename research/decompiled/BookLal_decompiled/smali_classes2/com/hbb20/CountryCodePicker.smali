.class public Lcom/hbb20/CountryCodePicker;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final synthetic J0:I


# instance fields
.field public A:Lt3/e;

.field public A0:I

.field public final B:Z

.field public B0:I

.field public final C:Z

.field public C0:I

.field public D:Z

.field public D0:I

.field public E:Z

.field public E0:I

.field public F:Z

.field public F0:I

.field public final G:Z

.field public G0:F

.field public H:Z

.field public H0:Lc3/b;

.field public I:Z

.field public final I0:LB2/e;

.field public J:Z

.field public K:Z

.field public L:Z

.field public final M:Z

.field public final N:Z

.field public O:Z

.field public P:Z

.field public final Q:Z

.field public final R:Z

.field public final S:Z

.field public T:Z

.field public U:Lc3/q;

.field public final V:Ljava/lang/String;

.field public W:I

.field public a:Lc3/c;

.field public a0:I

.field public final b:Ljava/lang/String;

.field public b0:Landroid/graphics/Typeface;

.field public c:I

.field public c0:I

.field public d:Ljava/lang/String;

.field public d0:Ljava/util/ArrayList;

.field public final e:Landroid/content/Context;

.field public final e0:I

.field public f:Landroid/view/View;

.field public f0:Ljava/lang/String;

.field public g0:I

.field public h0:Ljava/util/List;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Lc3/o;

.field public final l:Landroid/view/LayoutInflater;

.field public l0:Lc3/o;

.field public m:Landroid/widget/TextView;

.field public m0:Z

.field public n:Landroid/widget/EditText;

.field public n0:Z

.field public o:Landroid/widget/RelativeLayout;

.field public final o0:Z

.field public final p:Landroid/widget/ImageView;

.field public final p0:Z

.field public q:Landroid/widget/ImageView;

.field public q0:Z

.field public final r:Landroid/widget/LinearLayout;

.field public r0:Z

.field public final s:Landroid/widget/LinearLayout;

.field public final s0:Ljava/lang/String;

.field public t:Lc3/a;

.field public t0:LB2/a;

.field public u:Lc3/a;

.field public u0:Lc3/t;

.field public final v:Landroid/widget/RelativeLayout;

.field public v0:Landroid/text/TextWatcher;

.field public final w:Lcom/hbb20/CountryCodePicker;

.field public w0:Z

.field public x:Lc3/s;

.field public x0:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public y0:I

.field public z:Lc3/k;

.field public z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Ly3/c;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ly3/c;-><init>(I)V

    iput-object v2, v1, Lcom/hbb20/CountryCodePicker;->a:Lc3/c;

    const-string v2, "CCP_PREF_FILE"

    iput-object v2, v1, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/hbb20/CountryCodePicker;->y:Ljava/lang/String;

    sget-object v3, Lc3/k;->b:Lc3/k;

    iput-object v3, v1, Lcom/hbb20/CountryCodePicker;->z:Lc3/k;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->B:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->C:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->D:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->E:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->F:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->G:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->H:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->I:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->J:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->K:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->L:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->M:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->N:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->O:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->P:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->Q:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->R:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->S:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->T:Z

    sget-object v6, Lc3/q;->a:Lc3/q;

    iput-object v6, v1, Lcom/hbb20/CountryCodePicker;->U:Lc3/q;

    const-string v6, "ccp_last_selection"

    iput-object v6, v1, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    const/16 v6, -0x63

    iput v6, v1, Lcom/hbb20/CountryCodePicker;->W:I

    iput v6, v1, Lcom/hbb20/CountryCodePicker;->a0:I

    iput v5, v1, Lcom/hbb20/CountryCodePicker;->e0:I

    iput v5, v1, Lcom/hbb20/CountryCodePicker;->g0:I

    sget-object v7, Lc3/o;->d:Lc3/o;

    iput-object v7, v1, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    iput-object v7, v1, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->m0:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->n0:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->o0:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->p0:Z

    iput-boolean v4, v1, Lcom/hbb20/CountryCodePicker;->q0:Z

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->r0:Z

    const-string v8, "notSet"

    iput-object v8, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/hbb20/CountryCodePicker;->x0:Ljava/lang/String;

    iput v5, v1, Lcom/hbb20/CountryCodePicker;->y0:I

    iput-boolean v5, v1, Lcom/hbb20/CountryCodePicker;->z0:Z

    iput v5, v1, Lcom/hbb20/CountryCodePicker;->A0:I

    iput v5, v1, Lcom/hbb20/CountryCodePicker;->F0:I

    new-instance v9, LB2/e;

    const/16 v10, 0x14

    invoke-direct {v9, v1, v10}, LB2/e;-><init>(Ljava/lang/Object;I)V

    iput-object v9, v1, Lcom/hbb20/CountryCodePicker;->I0:LB2/e;

    move-object/from16 v9, p1

    iput-object v9, v1, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->l:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const-string v10, "http://schemas.android.com/apk/res/android"

    const-string v11, "layout_width"

    invoke-interface {v0, v10, v11}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    if-eqz v0, :cond_2

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    if-eqz v10, :cond_2

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    const-string v11, "fill_parent"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->s0:Ljava/lang/String;

    const-string v11, "match_parent"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->l:Landroid/view/LayoutInflater;

    const v11, 0x7f0c0068

    invoke-virtual {v10, v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->l:Landroid/view/LayoutInflater;

    const v11, 0x7f0c0067

    invoke-virtual {v10, v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    :goto_0
    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f0903b4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f09013c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->o:Landroid/widget/RelativeLayout;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f0901da

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f0901dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f0901fc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f0901fb

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->r:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    const v11, 0x7f090312

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, v1, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    iput-object v1, v1, Lcom/hbb20/CountryCodePicker;->w:Lcom/hbb20/CountryCodePicker;

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget-object v11, Lc3/u;->a:[I

    invoke-virtual {v10, v0, v11, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->C:Z

    const/16 v0, 0x17

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->q0:Z

    const/16 v0, 0x2d

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->D:Z

    const/16 v11, 0xf

    invoke-virtual {v10, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->E:Z

    const/16 v0, 0xe

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->P:Z

    const/16 v0, 0x10

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->I:Z

    const/16 v0, 0x31

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->R:Z

    const/16 v0, 0x30

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->S:Z

    const/16 v0, 0xd

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->J:Z

    const/4 v0, 0x7

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->Q:Z

    const/16 v0, 0x9

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->K:Z

    const/16 v0, 0x2b

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->G:Z

    const/16 v0, 0xc

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->H:Z

    const/4 v0, 0x4

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/hbb20/CountryCodePicker;->g0:I

    const/4 v0, 0x6

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/hbb20/CountryCodePicker;->A0:I

    const/4 v0, 0x5

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v1, Lcom/hbb20/CountryCodePicker;->F0:I

    const/16 v11, 0x16

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Lcom/hbb20/CountryCodePicker;->o0:Z

    const/16 v11, 0x12

    invoke-virtual {v10, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Lcom/hbb20/CountryCodePicker;->O:Z

    const/16 v11, 0x26

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Lcom/hbb20/CountryCodePicker;->N:Z

    const/16 v11, 0x22

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Lcom/hbb20/CountryCodePicker;->r0:Z

    const/16 v11, 0x24

    invoke-virtual {v10, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Lcom/hbb20/CountryCodePicker;->T:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07005a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const/16 v12, 0x25

    invoke-virtual {v10, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    float-to-int v11, v11

    iget-object v12, v1, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    const/16 v11, 0x23

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-static {}, Lc3/q;->values()[Lc3/q;

    move-result-object v12

    aget-object v11, v12, v11

    iput-object v11, v1, Lcom/hbb20/CountryCodePicker;->U:Lc3/q;

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    if-nez v11, :cond_3

    const-string v11, "CCP_last_selection"

    iput-object v11, v1, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :goto_1
    const/16 v11, 0x7b

    const/16 v12, 0x1a

    invoke-virtual {v10, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lc3/k;->values()[Lc3/k;

    move-result-object v12

    array-length v13, v12

    move v14, v5

    :goto_2
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    iget-object v6, v15, Lc3/k;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v15

    goto :goto_3

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/16 v6, -0x63

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v3, v1, Lcom/hbb20/CountryCodePicker;->z:Lc3/k;

    const/16 v3, 0x15

    invoke-virtual {v10, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/hbb20/CountryCodePicker;->p0:Z

    const/16 v3, 0x29

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v6, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const/16 v3, 0xb

    invoke-virtual {v10, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/hbb20/CountryCodePicker;->M:Z

    const/16 v3, 0x27

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/hbb20/CountryCodePicker;->B:Z

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->g()V

    const/16 v3, 0x2a

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hbb20/CountryCodePicker;->i(Z)V

    invoke-virtual {v10, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/hbb20/CountryCodePicker;->setDialogKeyboardAutoPopup(Z)V

    const/16 v3, 0x1d

    const/16 v6, 0xa

    invoke-virtual {v10, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {}, Lc3/o;->values()[Lc3/o;

    move-result-object v11

    array-length v11, v11

    if-ge v3, v11, :cond_7

    invoke-static {}, Lc3/o;->values()[Lc3/o;

    move-result-object v7

    aget-object v7, v7, v3

    :cond_7
    iput-object v7, v1, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->l()V

    const/16 v3, 0x1c

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hbb20/CountryCodePicker;->i0:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->f()V

    :cond_8
    const/16 v3, 0x1b

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hbb20/CountryCodePicker;->f0:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->h()V

    :cond_9
    const/16 v3, 0x2e

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v10, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Lcom/hbb20/CountryCodePicker;->e0:I

    :cond_a
    iget v3, v1, Lcom/hbb20/CountryCodePicker;->e0:I

    const/16 v7, 0x11

    const/4 v11, 0x3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_b

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    :cond_b
    if-nez v3, :cond_c

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    :cond_c
    iget-object v3, v1, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_5
    const/16 v0, 0x1e

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "IN"

    if-eqz v0, :cond_f

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v13

    iget-object v14, v1, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v0, v13, v14}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v13

    iget-object v14, v1, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v0, v13, v14}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :goto_6
    move v0, v4

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v0}, Lc3/a;->e(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v0}, Lc3/a;->e(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    goto :goto_6

    :cond_e
    move v0, v5

    :goto_7
    if-nez v0, :cond_10

    invoke-static {v3}, Lc3/a;->e(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    move v0, v4

    goto :goto_8

    :cond_f
    move v0, v5

    :cond_10
    :goto_8
    const/16 v13, 0x1f

    invoke-virtual {v10, v13, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    if-nez v0, :cond_14

    if-eq v13, v12, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/16 v14, 0x5b

    if-nez v0, :cond_12

    if-eq v13, v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v2

    iget-object v12, v1, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    invoke-static {v0, v2, v12, v13}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object v0

    if-nez v0, :cond_11

    move v13, v14

    :cond_11
    invoke-virtual {v1, v13}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc3/a;->d(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc3/a;->d(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    :cond_13
    invoke-direct {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_14
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lc3/a;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {v3}, Lc3/a;->e(Ljava/lang/String;)Lc3/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    invoke-direct/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_15
    iget-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->p0:Z

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v1, v4}, Lcom/hbb20/CountryCodePicker;->setAutoDetectedCountry(Z)V

    :cond_16
    iget-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->N:Z

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, v1, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setCountryForNameCode(Ljava/lang/String;)V

    :cond_17
    const/16 v0, 0x13

    const/16 v2, -0x63

    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setArrowColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/16 v3, 0x19

    if-eqz v0, :cond_18

    invoke-virtual {v10, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_a
    const/16 v2, -0x63

    goto :goto_b

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_a

    :goto_b
    if-eq v0, v2, :cond_19

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setContentColor(I)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/16 v2, 0x21

    if-eqz v0, :cond_1a

    invoke-virtual {v10, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_c

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_c
    if-eqz v0, :cond_1b

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setFlagBorderColor(I)V

    :cond_1b
    const/4 v0, 0x2

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackgroundColor(I)V

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackground(I)V

    invoke-virtual {v10, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogTextColor(I)V

    invoke-virtual {v10, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogSearchEditTextTintColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setDialogCornerRaius(F)V

    const/16 v0, 0x2f

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v2, v1, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    :cond_1c
    const/16 v0, 0x14

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    :cond_1d
    invoke-virtual {v10, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/hbb20/CountryCodePicker;->L:Z

    const/16 v0, 0x18

    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hbb20/CountryCodePicker;->setCcpClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_10

    :goto_e
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_d

    :goto_f
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_1e
    :goto_10
    iget-object v0, v1, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    iget-object v2, v1, Lcom/hbb20/CountryCodePicker;->I0:LB2/e;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/hbb20/CountryCodePicker;)Lc3/a;
    .locals 0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lc3/a;Ljava/util/ArrayList;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/a;

    iget-object v0, v0, Lc3/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getCCPLanguageFromLocale()Lc3/o;
    .locals 7

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lc3/o;->values()[Lc3/o;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v5, v4, Lc3/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lc3/o;->b:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lc3/o;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCountryCodeHolderClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->I0:LB2/e;

    return-object v0
.end method

.method private getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->v0:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lc3/j;

    invoke-direct {v0, p0}, Lc3/j;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->v0:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->v0:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private getDefaultCountry()Lc3/a;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    return-object v0
.end method

.method private getEnteredPhoneNumber()Lt3/j;
    .locals 3

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt3/e;->r(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lt3/e;->t(Ljava/lang/String;Ljava/lang/String;)Lt3/j;

    move-result-object v0

    return-object v0
.end method

.method private getHolderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    return-object v0
.end method

.method private getPhoneUtil()Lt3/e;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->A:Lt3/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v0}, Lt3/e;->b(Landroid/content/Context;)Lt3/e;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->A:Lt3/e;

    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->A:Lt3/e;

    return-object v0
.end method

.method private getSelectedCountry()Lc3/a;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lc3/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    return-object v0
.end method

.method private getSelectedHintNumberType()Lt3/d;
    .locals 2

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->U:Lc3/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lt3/d;->b:Lt3/d;

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    sget-object v0, Lt3/d;->q:Lt3/d;

    return-object v0

    :pswitch_1
    sget-object v0, Lt3/d;->p:Lt3/d;

    return-object v0

    :pswitch_2
    sget-object v0, Lt3/d;->o:Lt3/d;

    return-object v0

    :pswitch_3
    sget-object v0, Lt3/d;->n:Lt3/d;

    return-object v0

    :pswitch_4
    sget-object v0, Lt3/d;->m:Lt3/d;

    return-object v0

    :pswitch_5
    sget-object v0, Lt3/d;->l:Lt3/d;

    return-object v0

    :pswitch_6
    sget-object v0, Lt3/d;->f:Lt3/d;

    return-object v0

    :pswitch_7
    sget-object v0, Lt3/d;->e:Lt3/d;

    return-object v0

    :pswitch_8
    sget-object v0, Lt3/d;->d:Lt3/d;

    return-object v0

    :pswitch_9
    sget-object v0, Lt3/d;->c:Lt3/d;

    return-object v0

    :pswitch_a
    sget-object v0, Lt3/d;->a:Lt3/d;

    return-object v0

    :pswitch_b
    return-object v1

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

.method private getmInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private setCustomDefaultLanguage(Lc3/o;)V
    .locals 2

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->l()V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    iget-object v0, v0, Lc3/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_0
    return-void
.end method

.method private setDefaultCountry(Lc3/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    return-void
.end method

.method private setHolder(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private setHolderView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->f()V

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomMasterCountriesList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/a;->j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    iget-object v1, v1, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 4

    const-string v0, "+"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    iget-object v0, v0, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    iget-object v3, v3, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lt3/e;->t(Ljava/lang/String;Ljava/lang/String;)Lt3/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lt3/e;->m(Lt3/j;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    const-string v2, "No editText for Carrier number found."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lt3/c; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/hbb20/CountryCodePicker;->w:Lcom/hbb20/CountryCodePicker;

    sget-object v0, Lc3/i;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc3/i;->e:Landroid/content/Context;

    new-instance v0, Landroid/app/Dialog;

    sget-object v7, Lc3/i;->e:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->f()V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->h()V

    sget-object v0, Lc3/i;->e:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->f()V

    iget-object v7, v6, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getCustomMasterCountriesList()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v7

    invoke-static {v0, v7}, Lc3/a;->j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v8, 0x7f0c0069

    invoke-virtual {v0, v8}, Landroid/view/Window;->setContentView(I)V

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v8, Lc3/i;->e:Landroid/content/Context;

    const v9, 0x106000d

    invoke-static {v8, v9}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v8, 0x7f0902ec

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v9, 0x7f0903b5

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v10, 0x7f090313

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v11, 0x7f0901e1

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v12, 0x7f090183

    invoke-virtual {v0, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v13, 0x7f0903b3

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v14, 0x7f0900de

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/cardview/widget/CardView;

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v15, 0x7f0901e2

    invoke-virtual {v0, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageView;

    iget-boolean v0, v6, Lcom/hbb20/CountryCodePicker;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lcom/hbb20/CountryCodePicker;->m0:Z

    if-eqz v0, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    :cond_1
    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_2
    :try_start_0
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v0

    const/16 v3, -0x63

    if-eq v0, v3, :cond_2

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v3

    invoke-virtual {v13, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v3

    invoke-virtual {v9, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    invoke-virtual {v14, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_4
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogCornerRadius()F

    move-result v0

    invoke-virtual {v14, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    iget-boolean v0, v6, Lcom/hbb20/CountryCodePicker;->M:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_6

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, LY0/l0;

    invoke-direct {v0, v4}, LY0/l0;-><init>(I)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowTitle()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v4, 0x64

    invoke-static {v4, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_8
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    sget-object v4, Lc3/i;->b:Ljava/lang/reflect/Field;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    :try_start_1
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    sget-object v15, Lc3/i;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v15, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v0, Lc3/i;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v14, v14}, [Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v4, v0, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    :goto_6
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getSearchHintText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getNoResultACK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v6, Lcom/hbb20/CountryCodePicker;->L:Z

    if-nez v0, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    new-instance v0, Lc3/f;

    sget-object v4, Lc3/i;->e:Landroid/content/Context;

    sget-object v9, Lc3/i;->d:Landroid/app/Dialog;

    invoke-direct {v0}, Lu0/y;-><init>()V

    const/4 v14, 0x0

    iput-object v14, v0, Lc3/f;->d:Ljava/util/ArrayList;

    iput v2, v0, Lc3/f;->r:I

    iput-object v4, v0, Lc3/f;->p:Landroid/content/Context;

    iput-object v7, v0, Lc3/f;->e:Ljava/util/List;

    iput-object v6, v0, Lc3/f;->l:Lcom/hbb20/CountryCodePicker;

    iput-object v9, v0, Lc3/f;->o:Landroid/app/Dialog;

    iput-object v13, v0, Lc3/f;->f:Landroid/widget/TextView;

    iput-object v12, v0, Lc3/f;->n:Landroid/widget/EditText;

    iput-object v11, v0, Lc3/f;->q:Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v0, Lc3/f;->m:Landroid/view/LayoutInflater;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lc3/f;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lc3/f;->d:Ljava/util/ArrayList;

    iget-boolean v4, v6, Lcom/hbb20/CountryCodePicker;->L:Z

    if-eqz v4, :cond_c

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v4, LB2/a;

    const/4 v9, 0x2

    invoke-direct {v4, v0, v9}, LB2/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lc3/d;

    invoke-direct {v4, v0, v2}, Lc3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v4, LB2/e;

    const/16 v9, 0x13

    invoke-direct {v4, v0, v9}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    const v4, 0x7f0901ac

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0, v8}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean v4, v6, Lcom/hbb20/CountryCodePicker;->H:Z

    if-eqz v4, :cond_f

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleColor(I)V

    :cond_d
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setHandleColor(I)V

    :cond_e
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v3

    if-eqz v3, :cond_10

    :try_start_2
    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleTextAppearance(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_f
    invoke-virtual {v0, v3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setVisibility(I)V

    :cond_10
    :goto_8
    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    new-instance v3, Lc3/g;

    invoke-direct {v3, v6}, Lc3/g;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    new-instance v3, Lc3/h;

    invoke-direct {v3, v6}, Lc3/h;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v1, :cond_15

    iget-object v0, v6, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/a;

    iget-object v3, v3, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_12
    iget-object v0, v6, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, v6, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    goto :goto_9

    :cond_13
    move v0, v2

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/a;

    iget-object v3, v3, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    add-int/2addr v2, v0

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_9

    :cond_15
    :goto_a
    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v6}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lc3/m;

    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i0:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->i0:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5, v0}, Lcom/hbb20/CountryCodePicker;->b(Lc3/a;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v2

    invoke-static {v0, v2}, Lc3/a;->j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/a;

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    iget-object v5, v3, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    goto :goto_3

    :cond_7
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    goto :goto_3

    :cond_8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    :goto_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    invoke-virtual {v1}, Lc3/a;->m()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCcpDialogRippleEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    return v0
.end method

.method public getCcpDialogShowFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    return v0
.end method

.method public getCcpDialogShowNameCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    return v0
.end method

.method public getCcpDialogShowTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    return v0
.end method

.method public getContentColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->W:I

    return v0
.end method

.method public getCurrentTextGravity()Lc3/s;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->x:Lc3/s;

    return-object v0
.end method

.method public getCustomDefaultLanguage()Lc3/o;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    return-object v0
.end method

.method public getCustomMasterCountriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc3/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    return-object v0
.end method

.method public getCustomMasterCountriesParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i0:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    iget-object v0, v0, Lc3/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCodeAsInt()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDefaultCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCountryName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lc3/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, v0, Lc3/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryNameCode()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lc3/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, v0, Lc3/a;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialogBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->C0:I

    return v0
.end method

.method public getDialogBackgroundResId()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->B0:I

    return v0
.end method

.method public getDialogCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->G0:F

    return v0
.end method

.method public getDialogEventsListener()Lc3/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogSearchEditTextTintColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->E0:I

    return v0
.end method

.method public getDialogTextColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->D0:I

    return v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    sget-object v1, Lc3/a;->f:Lc3/o;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    sget-object v1, Lc3/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lc3/a;->l(Landroid/content/Context;Lc3/o;)V

    :cond_1
    sget-object v0, Lc3/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogTypeFace()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->b0:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDialogTypeFaceStyle()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->c0:I

    return v0
.end method

.method public getEditText_registeredCarrierNumber()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method public getFastScrollerBubbleColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->g0:I

    return v0
.end method

.method public getFastScrollerBubbleTextAppearance()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->F0:I

    return v0
.end method

.method public getFastScrollerHandleColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->A0:I

    return v0
.end method

.method public getFormattedFullNumber()Ljava/lang/String;
    .locals 4

    const-string v0, "+"

    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lt3/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lt3/e;->e(Lt3/j;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lt3/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "CCP"

    const-string v1, "getFullNumber: Could not parse number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNumber()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lt3/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lt3/e;->e(Lt3/j;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lt3/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "CCP"

    const-string v1, "getFullNumber: Could not parse number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt3/e;->r(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNumberWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImageViewFlag()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLanguageToApply()Lc3/o;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->l()V

    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    return-object v0
.end method

.method public getNoResultACK()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    sget-object v1, Lc3/a;->f:Lc3/o;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    sget-object v1, Lc3/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lc3/a;->l(Landroid/content/Context;Lc3/o;)V

    :cond_1
    sget-object v0, Lc3/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchHintText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    sget-object v1, Lc3/a;->f:Lc3/o;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    sget-object v1, Lc3/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lc3/a;->l(Landroid/content/Context;Lc3/o;)V

    :cond_1
    sget-object v0, Lc3/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryCode()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    iget-object v0, v0, Lc3/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryCodeAsInt()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryEnglishName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    iget-object v0, v0, Lc3/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryFlagResourceId()I
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    iget v0, v0, Lc3/a;->e:I

    return v0
.end method

.method public getSelectedCountryName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    iget-object v0, v0, Lc3/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryNameCode()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lc3/a;

    move-result-object v0

    iget-object v0, v0, Lc3/a;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView_selectedCountry()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()V
    .locals 10

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f0:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->f0:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v8

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc3/a;

    iget-object v8, v7, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_3
    move-object v7, v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v6, v8, v5}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_5

    invoke-static {v7, v0}, Lcom/hbb20/CountryCodePicker;->b(Lc3/a;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    goto :goto_4

    :cond_8
    :goto_3
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    :goto_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    invoke-virtual {v1}, Lc3/a;->m()V

    goto :goto_5

    :cond_9
    return-void
.end method

.method public final i(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->R:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 12

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt3/e;->r(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->u0:Lc3/t;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->v0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->q0:Z

    if-eqz v1, :cond_4

    new-instance v1, Lc3/t;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v3

    iget-boolean v4, p0, Lcom/hbb20/CountryCodePicker;->T:Z

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lc3/t;->a:Z

    const/4 v6, 0x0

    iput-object v6, v1, Lc3/t;->d:Landroid/text/Editable;

    iput-boolean v5, v1, Lc3/t;->f:Z

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v6}, Lt3/e;->b(Landroid/content/Context;)Lt3/e;

    move-result-object v6

    iput v3, v1, Lc3/t;->e:I

    new-instance v3, Lt3/a;

    invoke-direct {v3, v6, v2}, Lt3/a;-><init>(Lt3/e;Ljava/lang/String;)V

    iput-object v3, v1, Lc3/t;->c:Lt3/a;

    invoke-virtual {v3}, Lt3/a;->f()V

    iget-object v2, v1, Lc3/t;->d:Landroid/text/Editable;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v1, Lc3/t;->f:Z

    invoke-static {v2}, Lt3/e;->r(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v1, Lc3/t;->d:Landroid/text/Editable;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v6 .. v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    iput-boolean v5, v1, Lc3/t;->f:Z

    :cond_2
    iput-boolean v4, v1, Lc3/t;->l:Z

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->u0:Lc3/t;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->v0:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_5
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_6
    const-string v1, "CCP"

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateFormattingTextWatcher: EditText not registered "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateFormattingTextWatcher: selected country is null "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->r0:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lt3/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedHintNumberType()Lt3/d;

    move-result-object v2

    invoke-virtual {v0, v1}, Lt3/e;->n(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lt3/e;->h:Ljava/util/logging/Logger;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid or unknown region code provided: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lt3/e;->g(Ljava/lang/String;)Lt3/h;

    move-result-object v3

    invoke-static {v3, v2}, Lt3/e;->i(Lt3/h;Lt3/d;)Lt3/i;

    move-result-object v2

    :try_start_0
    iget-boolean v3, v2, Lt3/i;->e:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lt3/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lt3/e;->t(Ljava/lang/String;Ljava/lang/String;)Lt3/j;

    move-result-object v5
    :try_end_0
    .catch Lt3/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lt3/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, ""

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lt3/j;->b:J

    invoke-static {v1, v2, v3, v0}, LC/a;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->y:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    sget-object v1, Lc3/o;->d:Lc3/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->o0:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCCPLanguageFromLocale()Lc3/o;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lc3/o;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lc3/o;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lc3/o;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k0:Lc3/o;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    goto :goto_0

    :cond_5
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    sget-object v0, Lc3/i;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc3/i;->d:Landroid/app/Dialog;

    sput-object v0, Lc3/i;->e:Landroid/content/Context;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setArrowColor(I)V
    .locals 2

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->a0:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/hbb20/CountryCodePicker;->W:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setArrowSize(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAutoDetectedCountry(Z)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->z:Lc3/k;

    iget-object v3, v3, Lc3/k;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->z:Lc3/k;

    iget-object v3, v3, Lc3/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    const/4 v5, 0x1

    const-string v6, "phone"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v2, v5

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    move v2, v0

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :pswitch_1
    :try_start_3
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :pswitch_2
    :try_start_5
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_4
    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAutoDetectCountry: Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :cond_6
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoDetectionFailureListener(Lc3/n;)V
    .locals 0

    return-void
.end method

.method public setCcpClickable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->n0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->I0:LB2/e;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setCcpDialogRippleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    return-void
.end method

.method public setCcpDialogShowFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    return-void
.end method

.method public setCcpDialogShowNameCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    return-void
.end method

.method public setCcpDialogShowPhoneCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    return-void
.end method

.method public setCcpDialogShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    return-void
.end method

.method public setContentColor(I)V
    .locals 2

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->W:I

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lcom/hbb20/CountryCodePicker;->a0:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/ImageView;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->W:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCountryAutoDetectionPref(Lc3/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->z:Lc3/k;

    return-void
.end method

.method public setCountryForNameCode(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v0, v1, v2}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :goto_0
    return-void
.end method

.method public setCountryForPhoneCode(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v0, v1, v2}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    :goto_0
    return-void
.end method

.method public setCountryPreference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->f0:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTextGravity(Lc3/s;)V
    .locals 1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->x:Lc3/s;

    iget p1, p1, Lc3/s;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setCustomDialogTextProvider(Lc3/l;)V
    .locals 0

    return-void
.end method

.method public setCustomMasterCountries(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->i0:Ljava/lang/String;

    return-void
.end method

.method public setCustomMasterCountriesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc3/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->h0:Ljava/util/List;

    return-void
.end method

.method public setDefaultCountryUsingNameCode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lc3/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    :goto_0
    return-void
.end method

.method public setDefaultCountryUsingPhoneCode(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lc3/a;)V

    :goto_0
    return-void
.end method

.method public setDetectCountryWithAreaCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    return-void
.end method

.method public setDialogBackground(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->B0:I

    return-void
.end method

.method public setDialogBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->C0:I

    return-void
.end method

.method public setDialogCornerRaius(F)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->G0:F

    return-void
.end method

.method public setDialogEventsListener(Lc3/m;)V
    .locals 0

    return-void
.end method

.method public setDialogKeyboardAutoPopup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->m0:Z

    return-void
.end method

.method public setDialogSearchEditTextTintColor(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->E0:I

    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->D0:I

    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->b0:Landroid/graphics/Typeface;

    const/16 p1, -0x63

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->c0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V
    .locals 1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->y:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t0:LB2/a;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->d()Z

    new-instance p1, LB2/a;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, LB2/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->t0:LB2/a;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->k()V

    return-void
.end method

.method public setExcludedCountries(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->j0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->f()V

    return-void
.end method

.method public setFastScrollerBubbleColor(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->g0:I

    return-void
.end method

.method public setFastScrollerBubbleTextAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->F0:I

    return-void
.end method

.method public setFastScrollerHandleColor(I)V
    .locals 0

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->A0:I

    return-void
.end method

.method public setFlagBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setFlagSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFullNumber(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    move v6, v5

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lc3/b;->b(I)Lc3/b;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, v8, Lc3/b;->b:I

    add-int/2addr v5, v2

    if-lt v3, v5, :cond_2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lc3/b;->a(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v2, v8, Lc3/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc3/a;->f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {v0, v1, v2, v7}, Lc3/a;->c(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;Ljava/lang/String;)Lc3/a;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v3, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lc3/a;

    move-result-object v3

    :cond_6
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v3, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, v3, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    goto :goto_4

    :cond_a
    const-string p1, "CCP"

    const-string v0, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public setHintExampleNumberEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->r0:Z

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->k()V

    return-void
.end method

.method public setHintExampleNumberType(Lc3/q;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->U:Lc3/q;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->k()V

    return-void
.end method

.method public setImageViewFlag(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    return-void
.end method

.method public setInternationalFormattingOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->T:Z

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    :cond_0
    return-void
.end method

.method public setLanguageToApply(Lc3/o;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->l0:Lc3/o;

    return-void
.end method

.method public setNumberAutoFormattingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->q0:Z

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    :cond_0
    return-void
.end method

.method public setOnCountryChangeListener(Lc3/p;)V
    .locals 0

    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lc3/r;)V
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->d()Z

    invoke-interface {p1}, Lc3/r;->a()V

    :cond_0
    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    return-void
.end method

.method public setSelectedCountry(Lc3/a;)V
    .locals 5

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->a:Lc3/c;

    if-eqz v0, :cond_2

    const-string v0, " phone code is +"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->a:Lc3/c;

    check-cast v3, Ly3/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->w0:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->x0:Ljava/lang/String;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lc3/o;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->d0:Ljava/util/ArrayList;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v2, v3, v4}, Lc3/a;->b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    const-string v3, "  "

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->R:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->S:Z

    if-eqz v1, :cond_4

    const-string v1, "\ud83c\udfc1\u200b "

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lc3/a;->g(Lc3/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u200b "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lc3/a;->g(Lc3/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    if-eqz v2, :cond_7

    invoke-static {v1}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    if-eqz v2, :cond_8

    const-string v2, " ("

    invoke-static {v1, v2}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc3/a;->a:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v2, " "

    invoke-static {v1, v2}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc3/a;->a:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_3
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    const-string v4, "+"

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-static {v1, v4}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v1, v4}, Ls/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lc3/a;->h()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->k()V

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/EditText;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->w0:Z

    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->z0:Z

    if-eqz v1, :cond_d

    :try_start_0
    iget v1, p0, Lcom/hbb20/CountryCodePicker;->y0:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result p1

    invoke-static {p1}, Lc3/b;->b(I)Lc3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->H0:Lc3/b;

    return-void
.end method

.method public setShowFastScroller(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    return-void
.end method

.method public setShowPhoneCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    return-void
.end method

.method public setTalkBackTextProvider(Lc3/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->a:Lc3/c;

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Lc3/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lc3/a;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    :cond_0
    return-void
.end method

.method public setTextView_selectedCountry(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
