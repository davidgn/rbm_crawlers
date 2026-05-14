.class public final LT/c;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Landroid/widget/Filterable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/c;->a:I

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public constructor <init>(LY0/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/c;->a:I

    .line 2
    iput-object p1, p0, LT/c;->b:Landroid/widget/Filterable;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, LT/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, LT/c;->b:Landroid/widget/Filterable;

    check-cast v0, LT/b;

    check-cast v0, Ll/U0;

    invoke-virtual {v0, p1}, Ll/U0;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, LT/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    iget-object v4, v1, LT/c;->b:Landroid/widget/Filterable;

    check-cast v4, LY0/j;

    if-eqz v3, :cond_0

    iget-object v0, v4, LY0/j;->e:Ljava/util/ArrayList;

    iput-object v0, v4, LY0/j;->f:Ljava/util/List;

    goto/16 :goto_a

    :cond_0
    iget-object v3, v4, LY0/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LY0/e;

    iget-object v7, v5, LY0/e;->c:Ljava/lang/String;

    const-string v8, "  "

    const/16 v9, 0x2e

    const-string v10, ""

    const-string v11, " "

    if-eqz v7, :cond_4

    move-object v13, v10

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_3

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v9, :cond_2

    invoke-static {v13}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v13, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v7

    :goto_2
    const/16 v13, 0x2d

    const/16 v14, 0x20

    if-eqz v7, :cond_7

    move-object/from16 p1, v10

    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v15, v6, :cond_6

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v14, :cond_5

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v13, :cond_5

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_5

    invoke-static/range {p1 .. p1}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object/from16 v6, p1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 p1, v6

    const/16 v13, 0x2d

    goto :goto_3

    :cond_6
    move-object/from16 v6, p1

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    iget-object v6, v5, LY0/e;->f:Ljava/lang/String;

    if-eqz v6, :cond_a

    move-object v15, v10

    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_9

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v9, :cond_8

    invoke-static {v15}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v15, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    move-object v13, v6

    :goto_6
    if-eqz v6, :cond_e

    move-object v14, v10

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v10, v15, :cond_d

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x20

    if-eq v15, v9, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x2d

    if-eq v15, v9, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x2e

    if-eq v15, v9, :cond_c

    invoke-static {v14}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_b
    const/16 v9, 0x2e

    :cond_c
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v14, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_e
    move-object v8, v6

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, LY0/e;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, LY0/e;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, LY0/e;->c:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    iput-object v0, v4, LY0/j;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "No Results Found."

    iget-object v2, v4, LY0/j;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_10
    :goto_a
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v2, v4, LY0/j;->f:Ljava/util/List;

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, v1, LT/c;->b:Landroid/widget/Filterable;

    check-cast v0, LT/b;

    check-cast v0, Ll/U0;

    if-nez p1, :cond_11

    const-string v2, ""

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    iget-object v3, v0, Ll/U0;->p:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    :try_start_0
    iget-object v3, v0, Ll/U0;->q:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v3, v2}, Ll/U0;->g(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    const-string v2, "SuggestionsAdapter"

    const-string v3, "Search suggestions query threw an exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_c
    move-object v0, v5

    :goto_d
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v5, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_e
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget p1, p0, LT/c;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, LT/c;->b:Landroid/widget/Filterable;

    check-cast p2, LY0/j;

    iput-object p1, p2, LY0/j;->f:Ljava/util/List;

    invoke-virtual {p2}, Lu0/y;->d()V

    return-void

    :pswitch_0
    iget-object p1, p0, LT/c;->b:Landroid/widget/Filterable;

    check-cast p1, LT/b;

    iget-object v0, p1, LT/b;->c:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    check-cast p2, Landroid/database/Cursor;

    check-cast p1, Ll/U0;

    invoke-virtual {p1, p2}, Ll/U0;->b(Landroid/database/Cursor;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
