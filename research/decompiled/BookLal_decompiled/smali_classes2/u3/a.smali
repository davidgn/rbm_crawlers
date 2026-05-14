.class public final Lu3/a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field public final synthetic a:LG4/n;


# direct methods
.method public constructor <init>(ILG4/n;)V
    .locals 1

    iput-object p2, p0, Lu3/a;->a:LG4/n;

    const/high16 p2, 0x3f400000    # 0.75f

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget-object v0, p0, Lu3/a;->a:LG4/n;

    iget v0, v0, LG4/n;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
