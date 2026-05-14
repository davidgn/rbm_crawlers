.class public final Lx/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lx/k;

.field public final c:Lx/j;

.field public final d:Lx/i;

.field public final e:Lx/l;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lx/k;->a:I

    iput v1, v0, Lx/k;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lx/k;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Lx/k;->d:F

    iput-object v0, p0, Lx/h;->b:Lx/k;

    new-instance v0, Lx/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lx/j;->a:I

    iput v1, v0, Lx/j;->b:I

    iput v4, v0, Lx/j;->c:I

    iput v3, v0, Lx/j;->d:F

    iput v3, v0, Lx/j;->e:F

    iput v3, v0, Lx/j;->f:F

    iput v4, v0, Lx/j;->g:I

    const/4 v5, 0x0

    iput-object v5, v0, Lx/j;->h:Ljava/lang/String;

    iput v4, v0, Lx/j;->i:I

    iput-object v0, p0, Lx/h;->c:Lx/j;

    new-instance v0, Lx/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lx/i;->a:Z

    iput v4, v0, Lx/i;->d:I

    iput v4, v0, Lx/i;->e:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lx/i;->f:F

    const/4 v7, 0x1

    iput-boolean v7, v0, Lx/i;->g:Z

    iput v4, v0, Lx/i;->h:I

    iput v4, v0, Lx/i;->i:I

    iput v4, v0, Lx/i;->j:I

    iput v4, v0, Lx/i;->k:I

    iput v4, v0, Lx/i;->l:I

    iput v4, v0, Lx/i;->m:I

    iput v4, v0, Lx/i;->n:I

    iput v4, v0, Lx/i;->o:I

    iput v4, v0, Lx/i;->p:I

    iput v4, v0, Lx/i;->q:I

    iput v4, v0, Lx/i;->r:I

    iput v4, v0, Lx/i;->s:I

    iput v4, v0, Lx/i;->t:I

    iput v4, v0, Lx/i;->u:I

    iput v4, v0, Lx/i;->v:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Lx/i;->w:F

    iput v8, v0, Lx/i;->x:F

    iput-object v5, v0, Lx/i;->y:Ljava/lang/String;

    iput v4, v0, Lx/i;->z:I

    iput v1, v0, Lx/i;->A:I

    const/4 v5, 0x0

    iput v5, v0, Lx/i;->B:F

    iput v4, v0, Lx/i;->C:I

    iput v4, v0, Lx/i;->D:I

    iput v4, v0, Lx/i;->E:I

    iput v1, v0, Lx/i;->F:I

    iput v1, v0, Lx/i;->G:I

    iput v1, v0, Lx/i;->H:I

    iput v1, v0, Lx/i;->I:I

    iput v1, v0, Lx/i;->J:I

    iput v1, v0, Lx/i;->K:I

    iput v1, v0, Lx/i;->L:I

    const/high16 v8, -0x80000000

    iput v8, v0, Lx/i;->M:I

    iput v8, v0, Lx/i;->N:I

    iput v8, v0, Lx/i;->O:I

    iput v8, v0, Lx/i;->P:I

    iput v8, v0, Lx/i;->Q:I

    iput v8, v0, Lx/i;->R:I

    iput v8, v0, Lx/i;->S:I

    iput v6, v0, Lx/i;->T:F

    iput v6, v0, Lx/i;->U:F

    iput v1, v0, Lx/i;->V:I

    iput v1, v0, Lx/i;->W:I

    iput v1, v0, Lx/i;->X:I

    iput v1, v0, Lx/i;->Y:I

    iput v1, v0, Lx/i;->Z:I

    iput v1, v0, Lx/i;->a0:I

    iput v1, v0, Lx/i;->b0:I

    iput v1, v0, Lx/i;->c0:I

    iput v2, v0, Lx/i;->d0:F

    iput v2, v0, Lx/i;->e0:F

    iput v4, v0, Lx/i;->f0:I

    iput v1, v0, Lx/i;->g0:I

    iput v4, v0, Lx/i;->h0:I

    iput-boolean v1, v0, Lx/i;->l0:Z

    iput-boolean v1, v0, Lx/i;->m0:Z

    iput-boolean v7, v0, Lx/i;->n0:Z

    iput v1, v0, Lx/i;->o0:I

    iput-object v0, p0, Lx/h;->d:Lx/i;

    new-instance v0, Lx/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lx/l;->a:F

    iput v5, v0, Lx/l;->b:F

    iput v5, v0, Lx/l;->c:F

    iput v2, v0, Lx/l;->d:F

    iput v2, v0, Lx/l;->e:F

    iput v3, v0, Lx/l;->f:F

    iput v3, v0, Lx/l;->g:F

    iput v4, v0, Lx/l;->h:I

    iput v5, v0, Lx/l;->i:F

    iput v5, v0, Lx/l;->j:F

    iput v5, v0, Lx/l;->k:F

    iput-boolean v1, v0, Lx/l;->l:Z

    iput v5, v0, Lx/l;->m:F

    iput-object v0, p0, Lx/h;->e:Lx/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lx/h;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lx/d;)V
    .locals 2

    iget-object v0, p0, Lx/h;->d:Lx/i;

    iget v1, v0, Lx/i;->h:I

    iput v1, p1, Lx/d;->e:I

    iget v1, v0, Lx/i;->i:I

    iput v1, p1, Lx/d;->f:I

    iget v1, v0, Lx/i;->j:I

    iput v1, p1, Lx/d;->g:I

    iget v1, v0, Lx/i;->k:I

    iput v1, p1, Lx/d;->h:I

    iget v1, v0, Lx/i;->l:I

    iput v1, p1, Lx/d;->i:I

    iget v1, v0, Lx/i;->m:I

    iput v1, p1, Lx/d;->j:I

    iget v1, v0, Lx/i;->n:I

    iput v1, p1, Lx/d;->k:I

    iget v1, v0, Lx/i;->o:I

    iput v1, p1, Lx/d;->l:I

    iget v1, v0, Lx/i;->p:I

    iput v1, p1, Lx/d;->m:I

    iget v1, v0, Lx/i;->q:I

    iput v1, p1, Lx/d;->n:I

    iget v1, v0, Lx/i;->r:I

    iput v1, p1, Lx/d;->o:I

    iget v1, v0, Lx/i;->s:I

    iput v1, p1, Lx/d;->s:I

    iget v1, v0, Lx/i;->t:I

    iput v1, p1, Lx/d;->t:I

    iget v1, v0, Lx/i;->u:I

    iput v1, p1, Lx/d;->u:I

    iget v1, v0, Lx/i;->v:I

    iput v1, p1, Lx/d;->v:I

    iget v1, v0, Lx/i;->F:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Lx/i;->G:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v0, Lx/i;->H:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Lx/i;->I:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v0, Lx/i;->R:I

    iput v1, p1, Lx/d;->A:I

    iget v1, v0, Lx/i;->Q:I

    iput v1, p1, Lx/d;->B:I

    iget v1, v0, Lx/i;->N:I

    iput v1, p1, Lx/d;->x:I

    iget v1, v0, Lx/i;->P:I

    iput v1, p1, Lx/d;->z:I

    iget v1, v0, Lx/i;->w:F

    iput v1, p1, Lx/d;->E:F

    iget v1, v0, Lx/i;->x:F

    iput v1, p1, Lx/d;->F:F

    iget v1, v0, Lx/i;->z:I

    iput v1, p1, Lx/d;->p:I

    iget v1, v0, Lx/i;->A:I

    iput v1, p1, Lx/d;->q:I

    iget v1, v0, Lx/i;->B:F

    iput v1, p1, Lx/d;->r:F

    iget-object v1, v0, Lx/i;->y:Ljava/lang/String;

    iput-object v1, p1, Lx/d;->G:Ljava/lang/String;

    iget v1, v0, Lx/i;->C:I

    iput v1, p1, Lx/d;->T:I

    iget v1, v0, Lx/i;->D:I

    iput v1, p1, Lx/d;->U:I

    iget v1, v0, Lx/i;->T:F

    iput v1, p1, Lx/d;->I:F

    iget v1, v0, Lx/i;->U:F

    iput v1, p1, Lx/d;->H:F

    iget v1, v0, Lx/i;->W:I

    iput v1, p1, Lx/d;->K:I

    iget v1, v0, Lx/i;->V:I

    iput v1, p1, Lx/d;->J:I

    iget-boolean v1, v0, Lx/i;->l0:Z

    iput-boolean v1, p1, Lx/d;->W:Z

    iget-boolean v1, v0, Lx/i;->m0:Z

    iput-boolean v1, p1, Lx/d;->X:Z

    iget v1, v0, Lx/i;->X:I

    iput v1, p1, Lx/d;->L:I

    iget v1, v0, Lx/i;->Y:I

    iput v1, p1, Lx/d;->M:I

    iget v1, v0, Lx/i;->Z:I

    iput v1, p1, Lx/d;->P:I

    iget v1, v0, Lx/i;->a0:I

    iput v1, p1, Lx/d;->Q:I

    iget v1, v0, Lx/i;->b0:I

    iput v1, p1, Lx/d;->N:I

    iget v1, v0, Lx/i;->c0:I

    iput v1, p1, Lx/d;->O:I

    iget v1, v0, Lx/i;->d0:F

    iput v1, p1, Lx/d;->R:F

    iget v1, v0, Lx/i;->e0:F

    iput v1, p1, Lx/d;->S:F

    iget v1, v0, Lx/i;->E:I

    iput v1, p1, Lx/d;->V:I

    iget v1, v0, Lx/i;->f:F

    iput v1, p1, Lx/d;->c:F

    iget v1, v0, Lx/i;->d:I

    iput v1, p1, Lx/d;->a:I

    iget v1, v0, Lx/i;->e:I

    iput v1, p1, Lx/d;->b:I

    iget v1, v0, Lx/i;->b:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v0, Lx/i;->c:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v0, Lx/i;->k0:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, p1, Lx/d;->Y:Ljava/lang/String;

    :cond_0
    iget v1, v0, Lx/i;->o0:I

    iput v1, p1, Lx/d;->Z:I

    iget v1, v0, Lx/i;->K:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v0, Lx/i;->J:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lx/d;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lx/h;

    invoke-direct {v0}, Lx/h;-><init>()V

    iget-object v1, v0, Lx/h;->d:Lx/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx/h;->d:Lx/i;

    iget-boolean v3, v2, Lx/i;->a:Z

    iput-boolean v3, v1, Lx/i;->a:Z

    iget v3, v2, Lx/i;->b:I

    iput v3, v1, Lx/i;->b:I

    iget v3, v2, Lx/i;->c:I

    iput v3, v1, Lx/i;->c:I

    iget v3, v2, Lx/i;->d:I

    iput v3, v1, Lx/i;->d:I

    iget v3, v2, Lx/i;->e:I

    iput v3, v1, Lx/i;->e:I

    iget v3, v2, Lx/i;->f:F

    iput v3, v1, Lx/i;->f:F

    iget-boolean v3, v2, Lx/i;->g:Z

    iput-boolean v3, v1, Lx/i;->g:Z

    iget v3, v2, Lx/i;->h:I

    iput v3, v1, Lx/i;->h:I

    iget v3, v2, Lx/i;->i:I

    iput v3, v1, Lx/i;->i:I

    iget v3, v2, Lx/i;->j:I

    iput v3, v1, Lx/i;->j:I

    iget v3, v2, Lx/i;->k:I

    iput v3, v1, Lx/i;->k:I

    iget v3, v2, Lx/i;->l:I

    iput v3, v1, Lx/i;->l:I

    iget v3, v2, Lx/i;->m:I

    iput v3, v1, Lx/i;->m:I

    iget v3, v2, Lx/i;->n:I

    iput v3, v1, Lx/i;->n:I

    iget v3, v2, Lx/i;->o:I

    iput v3, v1, Lx/i;->o:I

    iget v3, v2, Lx/i;->p:I

    iput v3, v1, Lx/i;->p:I

    iget v3, v2, Lx/i;->q:I

    iput v3, v1, Lx/i;->q:I

    iget v3, v2, Lx/i;->r:I

    iput v3, v1, Lx/i;->r:I

    iget v3, v2, Lx/i;->s:I

    iput v3, v1, Lx/i;->s:I

    iget v3, v2, Lx/i;->t:I

    iput v3, v1, Lx/i;->t:I

    iget v3, v2, Lx/i;->u:I

    iput v3, v1, Lx/i;->u:I

    iget v3, v2, Lx/i;->v:I

    iput v3, v1, Lx/i;->v:I

    iget v3, v2, Lx/i;->w:F

    iput v3, v1, Lx/i;->w:F

    iget v3, v2, Lx/i;->x:F

    iput v3, v1, Lx/i;->x:F

    iget-object v3, v2, Lx/i;->y:Ljava/lang/String;

    iput-object v3, v1, Lx/i;->y:Ljava/lang/String;

    iget v3, v2, Lx/i;->z:I

    iput v3, v1, Lx/i;->z:I

    iget v3, v2, Lx/i;->A:I

    iput v3, v1, Lx/i;->A:I

    iget v3, v2, Lx/i;->B:F

    iput v3, v1, Lx/i;->B:F

    iget v3, v2, Lx/i;->C:I

    iput v3, v1, Lx/i;->C:I

    iget v3, v2, Lx/i;->D:I

    iput v3, v1, Lx/i;->D:I

    iget v3, v2, Lx/i;->E:I

    iput v3, v1, Lx/i;->E:I

    iget v3, v2, Lx/i;->F:I

    iput v3, v1, Lx/i;->F:I

    iget v3, v2, Lx/i;->G:I

    iput v3, v1, Lx/i;->G:I

    iget v3, v2, Lx/i;->H:I

    iput v3, v1, Lx/i;->H:I

    iget v3, v2, Lx/i;->I:I

    iput v3, v1, Lx/i;->I:I

    iget v3, v2, Lx/i;->J:I

    iput v3, v1, Lx/i;->J:I

    iget v3, v2, Lx/i;->K:I

    iput v3, v1, Lx/i;->K:I

    iget v3, v2, Lx/i;->L:I

    iput v3, v1, Lx/i;->L:I

    iget v3, v2, Lx/i;->M:I

    iput v3, v1, Lx/i;->M:I

    iget v3, v2, Lx/i;->N:I

    iput v3, v1, Lx/i;->N:I

    iget v3, v2, Lx/i;->O:I

    iput v3, v1, Lx/i;->O:I

    iget v3, v2, Lx/i;->P:I

    iput v3, v1, Lx/i;->P:I

    iget v3, v2, Lx/i;->Q:I

    iput v3, v1, Lx/i;->Q:I

    iget v3, v2, Lx/i;->R:I

    iput v3, v1, Lx/i;->R:I

    iget v3, v2, Lx/i;->S:I

    iput v3, v1, Lx/i;->S:I

    iget v3, v2, Lx/i;->T:F

    iput v3, v1, Lx/i;->T:F

    iget v3, v2, Lx/i;->U:F

    iput v3, v1, Lx/i;->U:F

    iget v3, v2, Lx/i;->V:I

    iput v3, v1, Lx/i;->V:I

    iget v3, v2, Lx/i;->W:I

    iput v3, v1, Lx/i;->W:I

    iget v3, v2, Lx/i;->X:I

    iput v3, v1, Lx/i;->X:I

    iget v3, v2, Lx/i;->Y:I

    iput v3, v1, Lx/i;->Y:I

    iget v3, v2, Lx/i;->Z:I

    iput v3, v1, Lx/i;->Z:I

    iget v3, v2, Lx/i;->a0:I

    iput v3, v1, Lx/i;->a0:I

    iget v3, v2, Lx/i;->b0:I

    iput v3, v1, Lx/i;->b0:I

    iget v3, v2, Lx/i;->c0:I

    iput v3, v1, Lx/i;->c0:I

    iget v3, v2, Lx/i;->d0:F

    iput v3, v1, Lx/i;->d0:F

    iget v3, v2, Lx/i;->e0:F

    iput v3, v1, Lx/i;->e0:F

    iget v3, v2, Lx/i;->f0:I

    iput v3, v1, Lx/i;->f0:I

    iget v3, v2, Lx/i;->g0:I

    iput v3, v1, Lx/i;->g0:I

    iget v3, v2, Lx/i;->h0:I

    iput v3, v1, Lx/i;->h0:I

    iget-object v3, v2, Lx/i;->k0:Ljava/lang/String;

    iput-object v3, v1, Lx/i;->k0:Ljava/lang/String;

    iget-object v3, v2, Lx/i;->i0:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Lx/i;->j0:Ljava/lang/String;

    if-nez v4, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lx/i;->i0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lx/i;->i0:[I

    :goto_0
    iget-object v3, v2, Lx/i;->j0:Ljava/lang/String;

    iput-object v3, v1, Lx/i;->j0:Ljava/lang/String;

    iget-boolean v3, v2, Lx/i;->l0:Z

    iput-boolean v3, v1, Lx/i;->l0:Z

    iget-boolean v3, v2, Lx/i;->m0:Z

    iput-boolean v3, v1, Lx/i;->m0:Z

    iget-boolean v3, v2, Lx/i;->n0:Z

    iput-boolean v3, v1, Lx/i;->n0:Z

    iget v2, v2, Lx/i;->o0:I

    iput v2, v1, Lx/i;->o0:I

    iget-object v1, v0, Lx/h;->c:Lx/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx/h;->c:Lx/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lx/j;->a:I

    iput v3, v1, Lx/j;->a:I

    iget v3, v2, Lx/j;->c:I

    iput v3, v1, Lx/j;->c:I

    iget v3, v2, Lx/j;->e:F

    iput v3, v1, Lx/j;->e:F

    iget v2, v2, Lx/j;->d:F

    iput v2, v1, Lx/j;->d:F

    iget-object v1, v0, Lx/h;->b:Lx/k;

    iget-object v2, p0, Lx/h;->b:Lx/k;

    iget v3, v2, Lx/k;->a:I

    iput v3, v1, Lx/k;->a:I

    iget v3, v2, Lx/k;->c:F

    iput v3, v1, Lx/k;->c:F

    iget v3, v2, Lx/k;->d:F

    iput v3, v1, Lx/k;->d:F

    iget v2, v2, Lx/k;->b:I

    iput v2, v1, Lx/k;->b:I

    iget-object v1, v0, Lx/h;->e:Lx/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lx/h;->e:Lx/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lx/l;->a:F

    iput v3, v1, Lx/l;->a:F

    iget v3, v2, Lx/l;->b:F

    iput v3, v1, Lx/l;->b:F

    iget v3, v2, Lx/l;->c:F

    iput v3, v1, Lx/l;->c:F

    iget v3, v2, Lx/l;->d:F

    iput v3, v1, Lx/l;->d:F

    iget v3, v2, Lx/l;->e:F

    iput v3, v1, Lx/l;->e:F

    iget v3, v2, Lx/l;->f:F

    iput v3, v1, Lx/l;->f:F

    iget v3, v2, Lx/l;->g:F

    iput v3, v1, Lx/l;->g:F

    iget v3, v2, Lx/l;->h:I

    iput v3, v1, Lx/l;->h:I

    iget v3, v2, Lx/l;->i:F

    iput v3, v1, Lx/l;->i:F

    iget v3, v2, Lx/l;->j:F

    iput v3, v1, Lx/l;->j:F

    iget v3, v2, Lx/l;->k:F

    iput v3, v1, Lx/l;->k:F

    iget-boolean v3, v2, Lx/l;->l:Z

    iput-boolean v3, v1, Lx/l;->l:Z

    iget v2, v2, Lx/l;->m:F

    iput v2, v1, Lx/l;->m:F

    iget v1, p0, Lx/h;->a:I

    iput v1, v0, Lx/h;->a:I

    return-object v0
.end method
