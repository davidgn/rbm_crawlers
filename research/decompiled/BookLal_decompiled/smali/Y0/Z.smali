.class public final LY0/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/Edit_Profile_Activity;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/Edit_Profile_Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/Z;->a:Lcom/booklal/booklal/Edit_Profile_Activity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    iget-object p1, p0, LY0/Z;->a:Lcom/booklal/booklal/Edit_Profile_Activity;

    invoke-virtual {p1, p2}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/booklal/booklal/Edit_Profile_Activity;->x:Ljava/lang/String;

    return-void
.end method
