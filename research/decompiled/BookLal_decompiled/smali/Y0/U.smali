.class public final LY0/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/EditBookDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/EditBookDetailsActivity;I)V
    .locals 0

    iput p2, p0, LY0/U;->a:I

    iput-object p1, p0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, LY0/U;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Updating..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->v:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->w:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->z:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->y:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->M:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->A:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->S:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v4, "AllBook"

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v3

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v3

    iput-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Requires minimum 3 characters."

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_1

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_1
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v7, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "BookName"

    invoke-virtual {v3, v9, v7, v8}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->B:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Book Name can\'t be empty! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->v:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "This field can\'t be empty!"

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->v:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->v:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x5

    if-ge v3, v8, :cond_5

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->D:Landroid/widget/EditText;

    const-string v1, "Requires minimum 5 characters."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_5
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v8, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->v:Ljava/lang/String;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "BookDescription"

    invoke-virtual {v3, v10, v8, v9}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_7
    :goto_3
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->l:Ljava/lang/String;

    iget-object v8, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->w:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->w:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->w:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_9

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_9
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v8, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->w:Ljava/lang/String;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "Publication"

    invoke-virtual {v3, v10, v8, v9}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_b
    :goto_5
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    const-string v8, "Author"

    if-eqz v3, :cond_f

    iget-object v9, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v2, :cond_13

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_c

    goto :goto_6

    :cond_c
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_d

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_d
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v4, v5}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_8

    :cond_e
    :goto_6
    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_f
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->m:Ljava/lang/String;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_10

    goto :goto_7

    :cond_10
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_11

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_11
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->x:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v4, v5}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_8

    :cond_12
    :goto_7
    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_13
    :goto_8
    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->Q:Ljava/lang/String;

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->P:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Symbol"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_14
    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->o:Ljava/lang/String;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->n:Ljava/lang/String;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_15
    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->y:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v4

    div-double/2addr v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v2, v2, v8

    const-string v3, "Printed Price can\'t be negative."

    const-string v10, "Selling Price can\'t be negative."

    if-gez v2, :cond_16

    cmpg-double v4, v4, v8

    if-gez v4, :cond_16

    iget-object v1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_16
    if-gez v2, :cond_17

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_17
    if-gez v2, :cond_18

    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_18
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_1a

    iget-object v1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->o:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->n:Ljava/lang/String;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->E:Landroid/widget/EditText;

    const-string v2, "You can\'t sell at more than 60% of the printed price."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_19
    iget-object v0, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->F:Landroid/widget/EditText;

    const-string v1, "Max Selling Price could be 60% of the Printed Price"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_9

    :cond_1a
    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->z:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "PrintedPrice"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->y:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "SellingPrice"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_1b
    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->s:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->A:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->A:Ljava/lang/Boolean;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "showPhone"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_1c
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->U:Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "time"

    invoke-virtual {v3, v5, v2, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->Y:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "BookImages/"

    const-string v4, "temp"

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->a0:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Ld3/a;->v(Landroid/content/Context;)Ld3/a;

    move-result-object v5

    iget-object v6, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->a0:Landroid/net/Uri;

    invoke-static {v0, v6}, LL4/d;->u(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Ld3/a;->s(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->T:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v6, v3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->t:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "P1.jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v5

    new-instance v6, LY0/W;

    invoke-direct {v6, p0}, LY0/W;-><init>(LY0/U;)V

    invoke-virtual {v5, v6}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1d
    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->Z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->b0:Landroid/net/Uri;

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Ld3/a;->v(Landroid/content/Context;)Ld3/a;

    move-result-object v5

    iget-object v6, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->b0:Landroid/net/Uri;

    invoke-static {v0, v6}, LL4/d;->u(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Ld3/a;->s(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->T:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v5, v3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "P2.jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v3

    new-instance v4, LY0/X;

    invoke-direct {v4, p0}, LY0/X;-><init>(LY0/U;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1e
    const v2, 0x7f090186

    invoke-virtual {v0, v2}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "Updated Successfully..."

    invoke-static {v0, v2, v1}, LA2/q;->f(Landroid/view/View;Ljava/lang/String;I)LA2/q;

    move-result-object v0

    new-instance v1, LB2/e;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LB2/e;-><init>(Ljava/lang/Object;I)V

    const-string v2, "Close."

    invoke-virtual {v0, v2, v1}, LA2/q;->g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, LA2/q;->h(I)V

    const/16 v1, 0x7d0

    iput v1, v0, LA2/n;->e:I

    invoke-virtual {v0}, LA2/q;->i()V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_9
    return-void

    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    iput-object p1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/booklal/booklal/EditBookDetailsActivity;->j(Lcom/booklal/booklal/EditBookDetailsActivity;)V

    return-void

    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    iput-object p1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->X:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/booklal/booklal/EditBookDetailsActivity;->W:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/booklal/booklal/EditBookDetailsActivity;->j(Lcom/booklal/booklal/EditBookDetailsActivity;)V

    return-void

    :pswitch_2
    iget-object p1, p0, LY0/U;->b:Lcom/booklal/booklal/EditBookDetailsActivity;

    invoke-virtual {p1}, Landroidx/activity/p;->onBackPressed()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
