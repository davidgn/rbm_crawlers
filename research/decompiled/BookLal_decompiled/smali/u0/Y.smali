.class public final Lu0/Y;
.super Lu0/I;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lu0/v;


# direct methods
.method public constructor <init>(Lu0/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/Y;->b:Lu0/v;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu0/Y;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lu0/Y;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu0/Y;->a:Z

    iget-object p1, p0, Lu0/Y;->b:Lu0/v;

    invoke-virtual {p1}, Lu0/v;->f()V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lu0/Y;->a:Z

    :cond_1
    return-void
.end method
