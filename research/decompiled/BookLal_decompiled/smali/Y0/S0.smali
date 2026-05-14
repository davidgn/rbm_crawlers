.class public final LY0/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/Take_Book_Information;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Take_Book_Information;I)V
    .locals 0

    iput p2, p0, LY0/S0;->a:I

    iput-object p1, p0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, v0, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const/4 v4, 0x1

    iget v5, v0, LY0/S0;->a:I

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v3}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget-object v5, Lcom/booklal/booklal/Take_Book_Information;->k0:Ljava/util/HashMap;

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v6, "Adding Book..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget-object v6, v3, Lcom/booklal/booklal/Take_Book_Information;->Y:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/booklal/booklal/Take_Book_Information;->Z:Ljava/lang/Boolean;

    iget-object v6, v3, Lcom/booklal/booklal/Take_Book_Information;->T:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v3, Lcom/booklal/booklal/Take_Book_Information;->N:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->O:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Book"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/booklal/booklal/Take_Book_Information;->N:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "P1"

    invoke-static {v6, v7}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->s:Ljava/lang/String;

    const-string v7, "P2"

    invoke-static {v6, v7}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->t:Ljava/lang/String;

    iget-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->u:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    const-string v7, ""

    move v8, v2

    move-object v9, v7

    :goto_0
    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, " "

    const/16 v12, 0xa

    if-ge v8, v10, :cond_2

    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_1

    invoke-static {v9}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    invoke-static {v9, v11}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    add-int/2addr v8, v4

    goto :goto_0

    :cond_2
    iput-object v9, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->v:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    move v8, v2

    move-object v9, v7

    :goto_2
    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_4

    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_3

    invoke-static {v9}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_3
    invoke-static {v9, v11}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    add-int/2addr v8, v4

    goto :goto_2

    :cond_4
    iput-object v9, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->z:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    move v8, v2

    move-object v10, v7

    :goto_4
    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_6

    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v12, :cond_5

    invoke-static {v10}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_5
    invoke-static {v10, v11}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    add-int/2addr v8, v4

    goto :goto_4

    :cond_6
    iput-object v10, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->w:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    move v8, v2

    :goto_6
    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_8

    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v12, :cond_7

    invoke-static {v7}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    add-int/2addr v8, v4

    goto :goto_6

    :cond_8
    iput-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    iget-object v7, v3, Lcom/booklal/booklal/Take_Book_Information;->P:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v8, "AllBook"

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v7

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x3

    if-ge v8, v12, :cond_9

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->u:Landroid/widget/EditText;

    const-string v2, "must be minimum 3 characters"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    const-string v1, "ERROR:  CHECK NAME\n"

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_f

    :cond_9
    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v13, 0xc8

    const-string v14, "Minimum 3 characters required.."

    if-lt v8, v1, :cond_a

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_b

    :cond_a
    move-object v8, v5

    goto/16 :goto_d

    :cond_b
    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v12, :cond_c

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    const-string v1, "ERROR: Check Publication"

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_f

    :cond_c
    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v12, :cond_d

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->z:Landroid/widget/EditText;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    const-string v1, "ERROR: Check Author"

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_f

    :cond_d
    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->x:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->o:Ljava/lang/String;

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->y:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->p:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v4, :cond_e

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->o:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v4, :cond_f

    :cond_e
    move-object v8, v5

    goto/16 :goto_b

    :cond_f
    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->o:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    iget-object v8, v3, Lcom/booklal/booklal/Take_Book_Information;->p:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v15, v15, v17

    div-double/2addr v15, v13

    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    cmpl-double v8, v15, v13

    if-lez v8, :cond_10

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->y:Landroid/widget/EditText;

    const-string v2, "Max Selling Price could be 60% of the Printed Price"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_f

    :cond_10
    iget-boolean v8, v3, Lcom/booklal/booklal/Take_Book_Information;->e0:Z

    if-eqz v8, :cond_12

    iget-wide v13, v3, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-lez v8, :cond_11

    goto :goto_8

    :cond_11
    iput-boolean v4, v3, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c005b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    const v3, 0x7f090409

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v5, 0x7f0900ab

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, LY0/W0;

    invoke-direct {v6, v0, v1, v2}, LY0/W0;-><init>(LY0/S0;Landroid/app/Dialog;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, LY0/W0;

    invoke-direct {v2, v0, v1, v4}, LY0/W0;-><init>(LY0/S0;Landroid/app/Dialog;I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_f

    :cond_12
    :goto_8
    iget-wide v14, v3, Lcom/booklal/booklal/Take_Book_Information;->L:D

    move-object v8, v5

    iget-wide v4, v3, Lcom/booklal/booklal/Take_Book_Information;->M:D

    invoke-static {v14, v15, v4, v5}, LI1/a;->a(DD)Z

    move-result v13

    if-eqz v13, :cond_16

    new-instance v13, LJ1/a;

    const/16 v18, 0xa

    move-object/from16 v19, v13

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v18}, LJ1/a;-><init>(DDI)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/booklal/booklal/Take_Book_Information;->m:Ljava/lang/String;

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v13, v4}, Lcom/booklal/booklal/Take_Book_Information;->m(Ljava/util/LinkedHashSet;Ljava/lang/String;)V

    invoke-static {v13, v10}, Lcom/booklal/booklal/Take_Book_Information;->m(Ljava/util/LinkedHashSet;Ljava/lang/String;)V

    invoke-static {v13, v9}, Lcom/booklal/booklal/Take_Book_Information;->m(Ljava/util/LinkedHashSet;Ljava/lang/String;)V

    invoke-static {v13, v4, v1}, Lcom/booklal/booklal/Take_Book_Information;->k(Ljava/util/LinkedHashSet;Ljava/lang/String;I)V

    invoke-static {v13, v4, v12}, Lcom/booklal/booklal/Take_Book_Information;->k(Ljava/util/LinkedHashSet;Ljava/lang/String;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_13

    invoke-static {v4}, Lcom/booklal/booklal/Take_Book_Information;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v1, :cond_13

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v5}, Lcom/booklal/booklal/Take_Book_Information;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v2

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-lt v10, v12, :cond_14

    goto :goto_a

    :cond_14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    add-int/2addr v10, v13

    goto :goto_9

    :cond_15
    :goto_a
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x32

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "user"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->O:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "BookName"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->c:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "BookDescription"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Publication"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->e:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Author"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->f:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Symbol"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->n:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "PrintedPrice"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->o:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "SellingPrice"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->p:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "BookCategory"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->U:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v10, v3, Lcom/booklal/booklal/Take_Book_Information;->L:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v11, "Latitude"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v10, v3, Lcom/booklal/booklal/Take_Book_Information;->M:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v11, "Longitude"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "CountryCode"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->l:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "City"

    iget-object v11, v3, Lcom/booklal/booklal/Take_Book_Information;->m:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v10, "time"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "showPhone"

    iget-object v3, v3, Lcom/booklal/booklal/Take_Book_Information;->Z:Ljava/lang/Boolean;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "search"

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Impressions"

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Visits"

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "geohash"

    move-object/from16 v3, v19

    iget-object v3, v3, LJ1/a;->a:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v9}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/B;

    invoke-direct {v3, v0, v8, v6}, LY0/B;-><init>(LY0/S0;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, LY0/a;

    invoke-direct {v3, v8, v1}, LY0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_f

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid geo location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_b
    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Can\'t be empty."

    const/4 v4, 0x1

    if-ge v1, v4, :cond_17

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_17

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->y:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->x:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_17
    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_18

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->y:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_18
    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->x:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_c
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    goto :goto_f

    :goto_d
    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v13, :cond_19

    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->w:Landroid/widget/EditText;

    const-string v2, "Exceeded limit 200 characters.."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_19
    iget-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->w:Landroid/widget/EditText;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_e
    const-string v1, "ERROR:\nPlease Check: Book Description"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    :goto_f
    return-void

    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->F:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->G:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/booklal/booklal/Take_Book_Information;->j(Lcom/booklal/booklal/Take_Book_Information;)V

    return-void

    :pswitch_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->G:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/booklal/booklal/Take_Book_Information;->F:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/booklal/booklal/Take_Book_Information;->j(Lcom/booklal/booklal/Take_Book_Information;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
