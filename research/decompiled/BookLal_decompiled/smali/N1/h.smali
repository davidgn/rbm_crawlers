.class public final LN1/h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:LN1/m;


# direct methods
.method public constructor <init>(LN1/m;)V
    .locals 0

    iput-object p1, p0, LN1/h;->a:LN1/m;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, LN1/h;->a:LN1/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, LN1/h;->a:LN1/m;

    iget-object v0, p1, LN1/m;->v:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object p1, p1, LN1/m;->m:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
