.class public final enum Lcom/google/protobuf/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/google/protobuf/C;

.field public static final enum c:Lcom/google/protobuf/C;

.field public static final d:[Lcom/google/protobuf/C;

.field public static final synthetic e:[Lcom/google/protobuf/C;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 64

    new-instance v0, Lcom/google/protobuf/C;

    move-object v6, v0

    sget-object v47, Lcom/google/protobuf/d0;->e:Lcom/google/protobuf/d0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "DOUBLE"

    const/16 v29, 0x1

    move/from16 v4, v29

    move-object/from16 v5, v47

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v8, Lcom/google/protobuf/C;

    move-object v7, v8

    sget-object v48, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/d0;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v9, "FLOAT"

    move/from16 v12, v29

    move-object/from16 v13, v48

    invoke-direct/range {v8 .. v13}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v9, Lcom/google/protobuf/C;

    move-object v8, v9

    sget-object v55, Lcom/google/protobuf/d0;->c:Lcom/google/protobuf/d0;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const-string v10, "INT64"

    move/from16 v13, v29

    move-object/from16 v14, v55

    invoke-direct/range {v9 .. v14}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v10, Lcom/google/protobuf/C;

    move-object v9, v10

    const/4 v12, 0x3

    const/4 v13, 0x3

    const-string v11, "UINT64"

    move/from16 v14, v29

    move-object/from16 v15, v55

    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v11, Lcom/google/protobuf/C;

    move-object v10, v11

    sget-object v54, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/d0;

    const/4 v13, 0x4

    const/4 v14, 0x4

    const-string v12, "INT32"

    move/from16 v15, v29

    move-object/from16 v16, v54

    invoke-direct/range {v11 .. v16}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v12, Lcom/google/protobuf/C;

    move-object v11, v12

    const/4 v14, 0x5

    const/4 v15, 0x5

    const-string v13, "FIXED64"

    move/from16 v16, v29

    move-object/from16 v17, v55

    invoke-direct/range {v12 .. v17}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v13, Lcom/google/protobuf/C;

    move-object v12, v13

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v14, "FIXED32"

    move/from16 v17, v29

    move-object/from16 v18, v54

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v14, Lcom/google/protobuf/C;

    move-object v13, v14

    sget-object v49, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    const/16 v16, 0x7

    const/16 v17, 0x7

    const-string v15, "BOOL"

    move/from16 v18, v29

    move-object/from16 v19, v49

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v15, Lcom/google/protobuf/C;

    move-object v14, v15

    sget-object v33, Lcom/google/protobuf/d0;->l:Lcom/google/protobuf/d0;

    const/16 v17, 0x8

    const/16 v18, 0x8

    const-string v16, "STRING"

    move/from16 v19, v29

    move-object/from16 v20, v33

    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v16, Lcom/google/protobuf/C;

    move-object/from16 v15, v16

    sget-object v56, Lcom/google/protobuf/d0;->o:Lcom/google/protobuf/d0;

    const/16 v18, 0x9

    const/16 v19, 0x9

    const-string v17, "MESSAGE"

    move/from16 v20, v29

    move-object/from16 v21, v56

    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v17, Lcom/google/protobuf/C;

    move-object/from16 v16, v17

    sget-object v35, Lcom/google/protobuf/d0;->m:Lcom/google/protobuf/d0;

    const/16 v19, 0xa

    const/16 v20, 0xa

    const-string v18, "BYTES"

    move/from16 v21, v29

    move-object/from16 v22, v35

    invoke-direct/range {v17 .. v22}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v18, Lcom/google/protobuf/C;

    move-object/from16 v17, v18

    const/16 v20, 0xb

    const/16 v21, 0xb

    const-string v19, "UINT32"

    move/from16 v22, v29

    move-object/from16 v23, v54

    invoke-direct/range {v18 .. v23}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v19, Lcom/google/protobuf/C;

    move-object/from16 v18, v19

    sget-object v51, Lcom/google/protobuf/d0;->n:Lcom/google/protobuf/d0;

    const/16 v21, 0xc

    const/16 v22, 0xc

    const-string v20, "ENUM"

    move/from16 v23, v29

    move-object/from16 v24, v51

    invoke-direct/range {v19 .. v24}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v20, Lcom/google/protobuf/C;

    move-object/from16 v19, v20

    const/16 v22, 0xd

    const/16 v23, 0xd

    const-string v21, "SFIXED32"

    move/from16 v24, v29

    move-object/from16 v25, v54

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v21, Lcom/google/protobuf/C;

    move-object/from16 v20, v21

    const/16 v23, 0xe

    const/16 v24, 0xe

    const-string v22, "SFIXED64"

    move/from16 v25, v29

    move-object/from16 v26, v55

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v22, Lcom/google/protobuf/C;

    move-object/from16 v21, v22

    const/16 v24, 0xf

    const/16 v25, 0xf

    const-string v23, "SINT32"

    move/from16 v26, v29

    move-object/from16 v27, v54

    invoke-direct/range {v22 .. v27}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v23, Lcom/google/protobuf/C;

    move-object/from16 v22, v23

    const/16 v25, 0x10

    const/16 v26, 0x10

    const-string v24, "SINT64"

    move/from16 v27, v29

    move-object/from16 v28, v55

    invoke-direct/range {v23 .. v28}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v24, Lcom/google/protobuf/C;

    move-object/from16 v23, v24

    const-string v25, "GROUP"

    const/16 v26, 0x11

    const/16 v27, 0x11

    move/from16 v28, v29

    move-object/from16 v29, v56

    invoke-direct/range {v24 .. v29}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v25, Lcom/google/protobuf/C;

    move-object/from16 v24, v25

    const/16 v27, 0x12

    const/16 v28, 0x12

    const-string v26, "DOUBLE_LIST"

    const/16 v57, 0x2

    move/from16 v29, v57

    move-object/from16 v30, v47

    invoke-direct/range {v25 .. v30}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v25, v0

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string v1, "FLOAT_LIST"

    move/from16 v4, v57

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v26, v0

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-string v1, "INT64_LIST"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v27, v0

    const/16 v2, 0x15

    const/16 v3, 0x15

    const-string v1, "UINT64_LIST"

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v28, v0

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v1, "INT32_LIST"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v29, v0

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v1, "FIXED64_LIST"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v30, v0

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v1, "FIXED32_LIST"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v31, v0

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v1, "BOOL_LIST"

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v32, v0

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v1, "STRING_LIST"

    move-object/from16 v5, v33

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v33, v0

    const-string v1, "MESSAGE_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v34, v0

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v35, v0

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string v1, "UINT32_LIST"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v36, v0

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v37, v0

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string v1, "SFIXED32_LIST"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v38, v0

    const/16 v2, 0x20

    const/16 v3, 0x20

    const-string v1, "SFIXED64_LIST"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v39, v0

    const/16 v2, 0x21

    const/16 v3, 0x21

    const-string v1, "SINT32_LIST"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v40, v0

    const/16 v2, 0x22

    const/16 v3, 0x22

    const-string v1, "SINT64_LIST"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v41, v0

    const/16 v44, 0x23

    const/16 v45, 0x23

    const-string v43, "DOUBLE_LIST_PACKED"

    const/16 v58, 0x3

    move-object/from16 v42, v0

    move/from16 v46, v58

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    sput-object v0, Lcom/google/protobuf/C;->b:Lcom/google/protobuf/C;

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v42, v0

    const/16 v2, 0x24

    const/16 v3, 0x24

    const-string v1, "FLOAT_LIST_PACKED"

    move/from16 v4, v58

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v43, v0

    const/16 v2, 0x25

    const/16 v3, 0x25

    const-string v1, "INT64_LIST_PACKED"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v44, v0

    const/16 v2, 0x26

    const/16 v3, 0x26

    const-string v1, "UINT64_LIST_PACKED"

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v45, v0

    const/16 v2, 0x27

    const/16 v3, 0x27

    const-string v1, "INT32_LIST_PACKED"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v46, v0

    const/16 v2, 0x28

    const/16 v3, 0x28

    const-string v1, "FIXED64_LIST_PACKED"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v47, v0

    const/16 v2, 0x29

    const/16 v3, 0x29

    const-string v1, "FIXED32_LIST_PACKED"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v48, v0

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const-string v1, "BOOL_LIST_PACKED"

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v49, v0

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const-string v1, "UINT32_LIST_PACKED"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v50, v0

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v51, v0

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const-string v1, "SFIXED32_LIST_PACKED"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v52, v0

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const-string v1, "SFIXED64_LIST_PACKED"

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v53, v0

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const-string v1, "SINT32_LIST_PACKED"

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v59, Lcom/google/protobuf/C;

    move-object/from16 v54, v59

    const/16 v2, 0x30

    const/16 v3, 0x30

    const-string v1, "SINT64_LIST_PACKED"

    move-object/from16 v0, v59

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    sput-object v59, Lcom/google/protobuf/C;->c:Lcom/google/protobuf/C;

    new-instance v0, Lcom/google/protobuf/C;

    move-object/from16 v55, v0

    const-string v1, "GROUP_LIST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    move/from16 v4, v57

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    new-instance v58, Lcom/google/protobuf/C;

    move-object/from16 v56, v58

    sget-object v63, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/d0;

    const/16 v60, 0x32

    const/16 v61, 0x32

    const-string v59, "MAP"

    const/16 v62, 0x4

    invoke-direct/range {v58 .. v63}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V

    filled-new-array/range {v6 .. v56}, [Lcom/google/protobuf/C;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/C;->e:[Lcom/google/protobuf/C;

    invoke-static {}, Lcom/google/protobuf/C;->values()[Lcom/google/protobuf/C;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/google/protobuf/C;

    sput-object v1, Lcom/google/protobuf/C;->d:[Lcom/google/protobuf/C;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/google/protobuf/C;->d:[Lcom/google/protobuf/C;

    iget v5, v3, Lcom/google/protobuf/C;->a:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/google/protobuf/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/C;->a:I

    invoke-static {p4}, Ls/e;->d(I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-ne p4, p2, :cond_2

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/C;
    .locals 1

    const-class v0, Lcom/google/protobuf/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/C;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/C;
    .locals 1

    sget-object v0, Lcom/google/protobuf/C;->e:[Lcom/google/protobuf/C;

    invoke-virtual {v0}, [Lcom/google/protobuf/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/C;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/C;->a:I

    return v0
.end method
