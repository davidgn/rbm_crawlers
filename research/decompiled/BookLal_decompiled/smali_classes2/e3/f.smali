.class public final Le3/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final synthetic c:Le3/g;


# direct methods
.method public constructor <init>(Le3/g;)V
    .locals 0

    iput-object p1, p0, Le3/f;->c:Le3/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Le3/f;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Le3/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_e

    aget-object v4, p1, v2

    iget-object v5, p0, Le3/f;->c:Le3/g;

    iget-object v6, v5, Le3/g;->a:Le3/j;

    sget-object v7, Le3/j;->a:Le3/j;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/F;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    invoke-static {v3, v9}, Le3/b;->a(Landroid/content/Context;Ljava/lang/String;)Le3/b;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, LI0/b;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, LI0/b;-><init>(I)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    new-instance v6, Le3/a;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Le3/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v6}, LW2/B;->l(Ljava/util/ArrayList;LJ2/g;)LK2/a;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v3

    :cond_1
    iput-object v5, p0, Le3/f;->a:Ljava/util/ArrayList;

    goto/16 :goto_6

    :cond_2
    sget-object v7, Le3/j;->b:Le3/j;

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/F;

    move-result-object v3

    invoke-static {v3, v4}, Le3/b;->c(Landroidx/fragment/app/F;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Le3/f;->a:Ljava/util/ArrayList;

    goto/16 :goto_6

    :cond_3
    sget-object v7, Le3/j;->c:Le3/j;

    if-ne v6, v7, :cond_6

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/F;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Currency;

    new-instance v8, Le3/i;

    invoke-virtual {v7}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/Currency;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, LL4/l;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v9, v10, v11, v7}, Le3/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, LI0/b;

    const/4 v6, 0x3

    invoke-direct {v3, v6}, LI0/b;-><init>(I)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    new-instance v6, Le3/a;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Le3/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v5, v6}, LW2/B;->l(Ljava/util/ArrayList;LJ2/g;)LK2/a;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v3

    :cond_5
    iput-object v5, p0, Le3/f;->b:Ljava/util/ArrayList;

    goto/16 :goto_6

    :cond_6
    sget-object v7, Le3/j;->d:Le3/j;

    if-ne v6, v7, :cond_d

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/F;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Currency;

    new-instance v9, Le3/i;

    invoke-virtual {v8}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/Currency;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, LL4/l;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v9, v10, v11, v12, v8}, Le3/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Le3/i;->l:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    invoke-static {v5, v3}, Le3/b;->c(Landroidx/fragment/app/F;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Le3/i;->l:Ljava/util/ArrayList;

    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    sget-object v10, Le3/i;->l:Ljava/util/ArrayList;

    new-instance v11, Le3/h;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v12}, Le3/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {v10, v11}, LW2/B;->l(Ljava/util/ArrayList;LJ2/g;)LK2/a;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    iput-object v8, v9, Le3/i;->e:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le3/b;

    iget-object v11, v11, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iput-object v10, v9, Le3/i;->f:Ljava/util/ArrayList;

    goto :goto_5

    :cond_a
    move-object v9, v3

    :goto_5
    if-eqz v9, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    new-instance v3, LI0/b;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, LI0/b;-><init>(I)V

    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    new-instance v5, Le3/a;

    const/4 v7, 0x3

    invoke-direct {v5, v4, v7}, Le3/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v6, v5}, LW2/B;->l(Ljava/util/ArrayList;LJ2/g;)LK2/a;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v3

    :cond_c
    iput-object v6, p0, Le3/f;->b:Ljava/util/ArrayList;

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v3
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Le3/f;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Le3/f;->b:Ljava/util/ArrayList;

    sget-object p1, Le3/g;->q:Ljava/lang/String;

    iget-object p1, p0, Le3/f;->c:Le3/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Le3/e;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p1, Le3/g;->a:Le3/j;

    iget-object v9, p1, Le3/g;->c:Lg3/a;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    iget-object v6, p1, Le3/g;->m:Ljava/lang/Boolean;

    iget-object v7, p1, Le3/g;->n:Ljava/lang/Boolean;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Le3/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Le3/j;Lg3/a;Landroid/app/Dialog;)V

    iput-object v0, p1, Le3/g;->l:Le3/e;

    goto :goto_0

    :cond_0
    new-instance v8, Le3/e;

    iget-object v5, p1, Le3/g;->a:Le3/j;

    iget-object v6, p1, Le3/g;->c:Lg3/a;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    iget-object v3, p1, Le3/g;->m:Ljava/lang/Boolean;

    iget-object v4, p1, Le3/g;->n:Ljava/lang/Boolean;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le3/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Le3/j;Lg3/a;Landroid/app/Dialog;)V

    iput-object v8, p1, Le3/g;->l:Le3/e;

    :goto_0
    iget-object v0, p1, Le3/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Le3/g;->l:Le3/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lu0/y;)V

    iget-object p1, p1, Le3/g;->e:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Le3/f;->c:Le3/g;

    iget-object v0, v0, Le3/g;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
