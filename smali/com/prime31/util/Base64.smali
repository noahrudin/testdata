.class public Lcom/prime31/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x40

    .line 58
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prime31/util/Base64;->ALPHABET:[B

    .line 66
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/prime31/util/Base64;->WEBSAFE_ALPHABET:[B

    const/16 v1, 0x80

    .line 75
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x9

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v5, 0x3

    aput-byte v3, v1, v5

    const/4 v6, 0x4

    aput-byte v3, v1, v6

    const/4 v7, 0x5

    aput-byte v3, v1, v7

    const/4 v8, 0x6

    aput-byte v3, v1, v8

    const/4 v9, 0x7

    aput-byte v3, v1, v9

    const/16 v10, 0x8

    aput-byte v3, v1, v10

    const/16 v11, 0x9

    const/4 v12, -0x5

    aput-byte v12, v1, v11

    const/16 v13, 0xa

    aput-byte v12, v1, v13

    const/16 v14, 0xb

    aput-byte v3, v1, v14

    const/16 v15, 0xc

    aput-byte v3, v1, v15

    const/16 v16, 0xd

    aput-byte v12, v1, v16

    const/16 v16, 0xe

    aput-byte v3, v1, v16

    const/16 v16, 0xf

    aput-byte v3, v1, v16

    const/16 v16, 0x10

    aput-byte v3, v1, v16

    const/16 v16, 0x11

    aput-byte v3, v1, v16

    const/16 v16, 0x12

    aput-byte v3, v1, v16

    const/16 v16, 0x13

    aput-byte v3, v1, v16

    const/16 v16, 0x14

    aput-byte v3, v1, v16

    const/16 v16, 0x15

    aput-byte v3, v1, v16

    const/16 v16, 0x16

    aput-byte v3, v1, v16

    const/16 v16, 0x17

    aput-byte v3, v1, v16

    const/16 v16, 0x18

    aput-byte v3, v1, v16

    const/16 v16, 0x19

    aput-byte v3, v1, v16

    const/16 v16, 0x1a

    aput-byte v3, v1, v16

    const/16 v16, 0x1b

    aput-byte v3, v1, v16

    const/16 v16, 0x1c

    aput-byte v3, v1, v16

    const/16 v16, 0x1d

    aput-byte v3, v1, v16

    const/16 v16, 0x1e

    aput-byte v3, v1, v16

    const/16 v16, 0x1f

    aput-byte v3, v1, v16

    const/16 v16, 0x20

    aput-byte v12, v1, v16

    const/16 v16, 0x21

    aput-byte v3, v1, v16

    const/16 v16, 0x22

    aput-byte v3, v1, v16

    const/16 v16, 0x23

    aput-byte v3, v1, v16

    const/16 v16, 0x24

    aput-byte v3, v1, v16

    const/16 v16, 0x25

    aput-byte v3, v1, v16

    const/16 v16, 0x26

    aput-byte v3, v1, v16

    const/16 v16, 0x27

    aput-byte v3, v1, v16

    const/16 v16, 0x28

    aput-byte v3, v1, v16

    const/16 v16, 0x29

    aput-byte v3, v1, v16

    const/16 v16, 0x2a

    aput-byte v3, v1, v16

    const/16 v16, 0x2b

    const/16 v17, 0x3e

    aput-byte v17, v1, v16

    const/16 v16, 0x2c

    aput-byte v3, v1, v16

    const/16 v16, 0x2d

    aput-byte v3, v1, v16

    const/16 v16, 0x2e

    aput-byte v3, v1, v16

    const/16 v16, 0x2f

    const/16 v17, 0x3f

    aput-byte v17, v1, v16

    const/16 v16, 0x30

    const/16 v17, 0x34

    aput-byte v17, v1, v16

    const/16 v16, 0x31

    const/16 v17, 0x35

    aput-byte v17, v1, v16

    const/16 v16, 0x32

    const/16 v17, 0x36

    aput-byte v17, v1, v16

    const/16 v16, 0x33

    const/16 v17, 0x37

    aput-byte v17, v1, v16

    const/16 v16, 0x34

    const/16 v17, 0x38

    aput-byte v17, v1, v16

    const/16 v16, 0x35

    const/16 v17, 0x39

    aput-byte v17, v1, v16

    const/16 v16, 0x36

    const/16 v17, 0x3a

    aput-byte v17, v1, v16

    const/16 v16, 0x37

    const/16 v17, 0x3b

    aput-byte v17, v1, v16

    const/16 v16, 0x38

    const/16 v17, 0x3c

    aput-byte v17, v1, v16

    const/16 v16, 0x39

    const/16 v17, 0x3d

    aput-byte v17, v1, v16

    const/16 v16, 0x3a

    aput-byte v3, v1, v16

    const/16 v16, 0x3b

    aput-byte v3, v1, v16

    const/16 v16, 0x3c

    aput-byte v3, v1, v16

    const/16 v16, 0x3d

    const/16 v17, -0x1

    aput-byte v17, v1, v16

    const/16 v16, 0x3e

    aput-byte v3, v1, v16

    const/16 v16, 0x3f

    aput-byte v3, v1, v16

    aput-byte v3, v1, v0

    const/16 v16, 0x42

    aput-byte v2, v1, v16

    const/16 v16, 0x43

    aput-byte v4, v1, v16

    const/16 v16, 0x44

    aput-byte v5, v1, v16

    const/16 v16, 0x45

    aput-byte v6, v1, v16

    const/16 v16, 0x46

    aput-byte v7, v1, v16

    const/16 v16, 0x47

    aput-byte v8, v1, v16

    const/16 v16, 0x48

    aput-byte v9, v1, v16

    const/16 v16, 0x49

    aput-byte v10, v1, v16

    const/16 v16, 0x4a

    aput-byte v11, v1, v16

    const/16 v16, 0x4b

    aput-byte v13, v1, v16

    const/16 v16, 0x4c

    aput-byte v14, v1, v16

    const/16 v16, 0x4d

    aput-byte v15, v1, v16

    const/16 v16, 0x4e

    const/16 v17, 0xd

    aput-byte v17, v1, v16

    const/16 v16, 0x4f

    const/16 v17, 0xe

    aput-byte v17, v1, v16

    const/16 v16, 0x50

    const/16 v17, 0xf

    aput-byte v17, v1, v16

    const/16 v16, 0x51

    const/16 v17, 0x10

    aput-byte v17, v1, v16

    const/16 v16, 0x52

    const/16 v17, 0x11

    aput-byte v17, v1, v16

    const/16 v16, 0x53

    const/16 v17, 0x12

    aput-byte v17, v1, v16

    const/16 v16, 0x54

    const/16 v17, 0x13

    aput-byte v17, v1, v16

    const/16 v16, 0x55

    const/16 v17, 0x14

    aput-byte v17, v1, v16

    const/16 v16, 0x56

    const/16 v17, 0x15

    aput-byte v17, v1, v16

    const/16 v16, 0x57

    const/16 v17, 0x16

    aput-byte v17, v1, v16

    const/16 v16, 0x58

    const/16 v17, 0x17

    aput-byte v17, v1, v16

    const/16 v16, 0x59

    const/16 v17, 0x18

    aput-byte v17, v1, v16

    const/16 v16, 0x5a

    const/16 v17, 0x19

    aput-byte v17, v1, v16

    const/16 v16, 0x5b

    aput-byte v3, v1, v16

    const/16 v16, 0x5c

    aput-byte v3, v1, v16

    const/16 v16, 0x5d

    aput-byte v3, v1, v16

    const/16 v16, 0x5e

    aput-byte v3, v1, v16

    const/16 v16, 0x5f

    aput-byte v3, v1, v16

    const/16 v16, 0x60

    aput-byte v3, v1, v16

    const/16 v16, 0x61

    const/16 v17, 0x1a

    aput-byte v17, v1, v16

    const/16 v16, 0x62

    const/16 v17, 0x1b

    aput-byte v17, v1, v16

    const/16 v16, 0x63

    const/16 v17, 0x1c

    aput-byte v17, v1, v16

    const/16 v16, 0x64

    const/16 v17, 0x1d

    aput-byte v17, v1, v16

    const/16 v16, 0x65

    const/16 v17, 0x1e

    aput-byte v17, v1, v16

    const/16 v16, 0x66

    const/16 v17, 0x1f

    aput-byte v17, v1, v16

    const/16 v16, 0x67

    const/16 v17, 0x20

    aput-byte v17, v1, v16

    const/16 v16, 0x68

    const/16 v17, 0x21

    aput-byte v17, v1, v16

    const/16 v16, 0x69

    const/16 v17, 0x22

    aput-byte v17, v1, v16

    const/16 v16, 0x6a

    const/16 v17, 0x23

    aput-byte v17, v1, v16

    const/16 v16, 0x6b

    const/16 v17, 0x24

    aput-byte v17, v1, v16

    const/16 v16, 0x6c

    const/16 v17, 0x25

    aput-byte v17, v1, v16

    const/16 v16, 0x6d

    const/16 v17, 0x26

    aput-byte v17, v1, v16

    const/16 v16, 0x6e

    const/16 v17, 0x27

    aput-byte v17, v1, v16

    const/16 v16, 0x6f

    const/16 v17, 0x28

    aput-byte v17, v1, v16

    const/16 v16, 0x70

    const/16 v17, 0x29

    aput-byte v17, v1, v16

    const/16 v16, 0x71

    const/16 v17, 0x2a

    aput-byte v17, v1, v16

    const/16 v16, 0x72

    const/16 v17, 0x2b

    aput-byte v17, v1, v16

    const/16 v16, 0x73

    const/16 v17, 0x2c

    aput-byte v17, v1, v16

    const/16 v16, 0x74

    const/16 v17, 0x2d

    aput-byte v17, v1, v16

    const/16 v16, 0x75

    const/16 v17, 0x2e

    aput-byte v17, v1, v16

    const/16 v16, 0x76

    const/16 v17, 0x2f

    aput-byte v17, v1, v16

    const/16 v16, 0x77

    const/16 v17, 0x30

    aput-byte v17, v1, v16

    const/16 v16, 0x78

    const/16 v17, 0x31

    aput-byte v17, v1, v16

    const/16 v16, 0x79

    const/16 v17, 0x32

    aput-byte v17, v1, v16

    const/16 v16, 0x7a

    const/16 v17, 0x33

    aput-byte v17, v1, v16

    const/16 v16, 0x7b

    aput-byte v3, v1, v16

    const/16 v16, 0x7c

    aput-byte v3, v1, v16

    const/16 v16, 0x7d

    aput-byte v3, v1, v16

    const/16 v16, 0x7e

    aput-byte v3, v1, v16

    const/16 v16, 0x7f

    aput-byte v3, v1, v16

    sput-object v1, Lcom/prime31/util/Base64;->DECODABET:[B

    const/16 v1, 0x80

    .line 119
    new-array v1, v1, [B

    const/16 v16, 0x0

    aput-byte v3, v1, v16

    aput-byte v3, v1, v2

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v3, v1, v6

    aput-byte v3, v1, v7

    aput-byte v3, v1, v8

    aput-byte v3, v1, v9

    aput-byte v3, v1, v10

    aput-byte v12, v1, v11

    aput-byte v12, v1, v13

    aput-byte v3, v1, v14

    aput-byte v3, v1, v15

    const/16 v16, 0xd

    aput-byte v12, v1, v16

    const/16 v16, 0xe

    aput-byte v3, v1, v16

    const/16 v16, 0xf

    aput-byte v3, v1, v16

    const/16 v16, 0x10

    aput-byte v3, v1, v16

    const/16 v16, 0x11

    aput-byte v3, v1, v16

    const/16 v16, 0x12

    aput-byte v3, v1, v16

    const/16 v16, 0x13

    aput-byte v3, v1, v16

    const/16 v16, 0x14

    aput-byte v3, v1, v16

    const/16 v16, 0x15

    aput-byte v3, v1, v16

    const/16 v16, 0x16

    aput-byte v3, v1, v16

    const/16 v16, 0x17

    aput-byte v3, v1, v16

    const/16 v16, 0x18

    aput-byte v3, v1, v16

    const/16 v16, 0x19

    aput-byte v3, v1, v16

    const/16 v16, 0x1a

    aput-byte v3, v1, v16

    const/16 v16, 0x1b

    aput-byte v3, v1, v16

    const/16 v16, 0x1c

    aput-byte v3, v1, v16

    const/16 v16, 0x1d

    aput-byte v3, v1, v16

    const/16 v16, 0x1e

    aput-byte v3, v1, v16

    const/16 v16, 0x1f

    aput-byte v3, v1, v16

    const/16 v16, 0x20

    aput-byte v12, v1, v16

    const/16 v12, 0x21

    aput-byte v3, v1, v12

    const/16 v12, 0x22

    aput-byte v3, v1, v12

    const/16 v12, 0x23

    aput-byte v3, v1, v12

    const/16 v12, 0x24

    aput-byte v3, v1, v12

    const/16 v12, 0x25

    aput-byte v3, v1, v12

    const/16 v12, 0x26

    aput-byte v3, v1, v12

    const/16 v12, 0x27

    aput-byte v3, v1, v12

    const/16 v12, 0x28

    aput-byte v3, v1, v12

    const/16 v12, 0x29

    aput-byte v3, v1, v12

    const/16 v12, 0x2a

    aput-byte v3, v1, v12

    const/16 v12, 0x2b

    aput-byte v3, v1, v12

    const/16 v12, 0x2c

    aput-byte v3, v1, v12

    const/16 v12, 0x2d

    const/16 v16, 0x3e

    aput-byte v16, v1, v12

    const/16 v12, 0x2e

    aput-byte v3, v1, v12

    const/16 v12, 0x2f

    aput-byte v3, v1, v12

    const/16 v12, 0x30

    const/16 v16, 0x34

    aput-byte v16, v1, v12

    const/16 v12, 0x31

    const/16 v16, 0x35

    aput-byte v16, v1, v12

    const/16 v12, 0x32

    const/16 v16, 0x36

    aput-byte v16, v1, v12

    const/16 v12, 0x33

    const/16 v16, 0x37

    aput-byte v16, v1, v12

    const/16 v12, 0x34

    const/16 v16, 0x38

    aput-byte v16, v1, v12

    const/16 v12, 0x35

    const/16 v16, 0x39

    aput-byte v16, v1, v12

    const/16 v12, 0x36

    const/16 v16, 0x3a

    aput-byte v16, v1, v12

    const/16 v12, 0x37

    const/16 v16, 0x3b

    aput-byte v16, v1, v12

    const/16 v12, 0x38

    const/16 v16, 0x3c

    aput-byte v16, v1, v12

    const/16 v12, 0x39

    const/16 v16, 0x3d

    aput-byte v16, v1, v12

    const/16 v12, 0x3a

    aput-byte v3, v1, v12

    const/16 v12, 0x3b

    aput-byte v3, v1, v12

    const/16 v12, 0x3c

    aput-byte v3, v1, v12

    const/16 v12, 0x3d

    const/16 v16, -0x1

    aput-byte v16, v1, v12

    const/16 v12, 0x3e

    aput-byte v3, v1, v12

    const/16 v12, 0x3f

    aput-byte v3, v1, v12

    aput-byte v3, v1, v0

    const/16 v0, 0x42

    aput-byte v2, v1, v0

    const/16 v0, 0x43

    aput-byte v4, v1, v0

    const/16 v0, 0x44

    aput-byte v5, v1, v0

    const/16 v0, 0x45

    aput-byte v6, v1, v0

    const/16 v0, 0x46

    aput-byte v7, v1, v0

    const/16 v0, 0x47

    aput-byte v8, v1, v0

    const/16 v0, 0x48

    aput-byte v9, v1, v0

    const/16 v0, 0x49

    aput-byte v10, v1, v0

    const/16 v0, 0x4a

    aput-byte v11, v1, v0

    const/16 v0, 0x4b

    aput-byte v13, v1, v0

    const/16 v0, 0x4c

    aput-byte v14, v1, v0

    const/16 v0, 0x4d

    aput-byte v15, v1, v0

    const/16 v0, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v1, v0

    const/16 v0, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v1, v0

    const/16 v0, 0x50

    const/16 v2, 0xf

    aput-byte v2, v1, v0

    const/16 v0, 0x51

    const/16 v2, 0x10

    aput-byte v2, v1, v0

    const/16 v0, 0x52

    const/16 v2, 0x11

    aput-byte v2, v1, v0

    const/16 v0, 0x53

    const/16 v2, 0x12

    aput-byte v2, v1, v0

    const/16 v0, 0x54

    const/16 v2, 0x13

    aput-byte v2, v1, v0

    const/16 v0, 0x55

    const/16 v2, 0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x56

    const/16 v2, 0x15

    aput-byte v2, v1, v0

    const/16 v0, 0x57

    const/16 v2, 0x16

    aput-byte v2, v1, v0

    const/16 v0, 0x58

    const/16 v2, 0x17

    aput-byte v2, v1, v0

    const/16 v0, 0x59

    const/16 v2, 0x18

    aput-byte v2, v1, v0

    const/16 v0, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v1, v0

    const/16 v0, 0x5b

    aput-byte v3, v1, v0

    const/16 v0, 0x5c

    aput-byte v3, v1, v0

    const/16 v0, 0x5d

    aput-byte v3, v1, v0

    const/16 v0, 0x5e

    aput-byte v3, v1, v0

    const/16 v0, 0x5f

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    const/16 v0, 0x60

    aput-byte v3, v1, v0

    const/16 v0, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v1, v0

    const/16 v0, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v1, v0

    const/16 v0, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v1, v0

    const/16 v0, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v1, v0

    const/16 v0, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v1, v0

    const/16 v0, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v1, v0

    const/16 v0, 0x67

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    const/16 v0, 0x68

    const/16 v2, 0x21

    aput-byte v2, v1, v0

    const/16 v0, 0x69

    const/16 v2, 0x22

    aput-byte v2, v1, v0

    const/16 v0, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v1, v0

    const/16 v0, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v1, v0

    const/16 v0, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v1, v0

    const/16 v0, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v1, v0

    const/16 v0, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v1, v0

    const/16 v0, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v1, v0

    const/16 v0, 0x70

    const/16 v2, 0x29

    aput-byte v2, v1, v0

    const/16 v0, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v1, v0

    const/16 v0, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v1, v0

    const/16 v0, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v1, v0

    const/16 v0, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v1, v0

    const/16 v0, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v1, v0

    const/16 v0, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v1, v0

    const/16 v0, 0x77

    const/16 v2, 0x30

    aput-byte v2, v1, v0

    const/16 v0, 0x78

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    const/16 v0, 0x79

    const/16 v2, 0x32

    aput-byte v2, v1, v0

    const/16 v0, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v1, v0

    const/16 v0, 0x7b

    aput-byte v3, v1, v0

    const/16 v0, 0x7c

    aput-byte v3, v1, v0

    const/16 v0, 0x7d

    aput-byte v3, v1, v0

    const/16 v0, 0x7e

    aput-byte v3, v1, v0

    const/16 v0, 0x7f

    aput-byte v3, v1, v0

    sput-object v1, Lcom/prime31/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 447
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/prime31/util/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 478
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/prime31/util/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/prime31/util/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/prime31/util/Base64;->decode([BII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII[B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    .line 552
    div-int/2addr v2, v3

    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 553
    new-array v2, v2, [B

    .line 556
    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x3d

    const/4 v11, 0x1

    if-lt v7, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v12, v7, p1

    .line 563
    aget-byte v13, p0, v12

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    .line 565
    aget-byte v14, v1, v13

    const/4 v15, -0x5

    if-lt v14, v15, :cond_c

    const/4 v12, -0x1

    if-lt v14, v12, :cond_b

    if-ne v13, v10, :cond_9

    sub-int v12, v0, v7

    add-int/lit8 v13, v0, -0x1

    add-int v13, v13, p1

    .line 577
    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    if-eqz v8, :cond_8

    if-eq v8, v11, :cond_8

    const/4 v14, 0x3

    if-ne v8, v14, :cond_1

    if-gt v12, v4, :cond_2

    :cond_1
    if-ne v8, v3, :cond_3

    if-gt v12, v11, :cond_2

    goto :goto_1

    .line 584
    :cond_2
    new-instance v0, Lcom/prime31/util/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prime31/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eq v13, v10, :cond_5

    const/16 v3, 0xa

    if-ne v13, v3, :cond_4

    goto :goto_2

    .line 588
    :cond_4
    new-instance v0, Lcom/prime31/util/Base64DecoderException;

    const-string v1, "encoded value has invalid trailing byte"

    invoke-direct {v0, v1}, Lcom/prime31/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-eqz v8, :cond_7

    if-eq v8, v11, :cond_6

    .line 619
    aput-byte v10, v5, v8

    .line 620
    invoke-static {v5, v6, v2, v9, v1}, Lcom/prime31/util/Base64;->decode4to3([BI[BI[B)I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_3

    .line 617
    :cond_6
    new-instance v1, Lcom/prime31/util/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "single trailing character at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/prime31/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_7
    :goto_3
    new-array v0, v9, [B

    .line 624
    invoke-static {v2, v6, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 580
    :cond_8
    new-instance v0, Lcom/prime31/util/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prime31/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v10, v8, 0x1

    .line 593
    aput-byte v13, v5, v8

    if-ne v10, v3, :cond_a

    .line 596
    invoke-static {v5, v6, v2, v9, v1}, Lcom/prime31/util/Base64;->decode4to3([BI[BI[B)I

    move-result v8

    add-int/2addr v9, v8

    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    move v8, v10

    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 603
    :cond_c
    new-instance v0, Lcom/prime31/util/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prime31/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 6

    add-int/lit8 v0, p1, 0x2

    .line 406
    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 408
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 410
    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 413
    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    .line 416
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x12

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 418
    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 419
    aput-byte p0, p2, p3

    return v5

    .line 425
    :cond_1
    aget-byte v2, p0, p1

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    aget-byte v0, p0, v0

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    .line 426
    aget-byte p0, p0, v1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 428
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 p4, p0, 0x8

    int-to-byte p4, p4

    .line 429
    aput-byte p4, p2, p1

    add-int/2addr p3, v5

    int-to-byte p0, p0

    .line 430
    aput-byte p0, p2, p3

    const/4 p0, 0x3

    return p0
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 462
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/prime31/util/Base64;->decodeWebSafe([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeWebSafe([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 493
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/prime31/util/Base64;->decodeWebSafe([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeWebSafe([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/Base64DecoderException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/prime31/util/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/prime31/util/Base64;->decode([BII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4

    .line 255
    array-length v0, p0

    sget-object v1, Lcom/prime31/util/Base64;->ALPHABET:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, Lcom/prime31/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    .line 292
    invoke-static {p0, p1, p2, p3, v0}, Lcom/prime31/util/Base64;->encode([BII[BI)[B

    move-result-object p0

    .line 293
    array-length p1, p0

    :goto_0
    if-nez p4, :cond_2

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p1, -0x1

    .line 299
    aget-byte p2, p0, p2

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 306
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p2
.end method

.method public static encode([BII[BI)[B
    .locals 11

    add-int/lit8 v0, p2, 0x2

    .line 327
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 330
    div-int v1, v0, p4

    add-int/2addr v0, v1

    .line 329
    new-array v0, v0, [B

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0xa

    if-lt v3, v1, :cond_1

    if-ge v3, p2, :cond_0

    add-int v2, v3, p1

    sub-int v3, p2, v3

    move-object v1, p0

    move-object v4, v0

    move v5, v7

    move-object v6, p3

    .line 359
    invoke-static/range {v1 .. v6}, Lcom/prime31/util/Base64;->encode3to4([BII[BI[B)[B

    add-int/lit8 v8, v8, 0x4

    if-ne v8, p4, :cond_0

    add-int/lit8 v7, v7, 0x4

    .line 365
    aput-byte v9, v0, v7

    :cond_0
    return-object v0

    :cond_1
    add-int v4, v3, p1

    .line 342
    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x12

    .line 343
    aget-byte v5, p3, v5

    aput-byte v5, v0, v7

    add-int/lit8 v5, v7, 0x1

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 344
    aget-byte v6, p3, v6

    aput-byte v6, v0, v5

    add-int/lit8 v6, v7, 0x2

    ushr-int/lit8 v10, v4, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 345
    aget-byte v10, p3, v10

    aput-byte v10, v0, v6

    add-int/lit8 v6, v7, 0x3

    and-int/lit8 v4, v4, 0x3f

    .line 346
    aget-byte v4, p3, v4

    aput-byte v4, v0, v6

    add-int/lit8 v8, v8, 0x4

    if-ne v8, p4, :cond_2

    add-int/lit8 v7, v7, 0x4

    .line 351
    aput-byte v9, v0, v7

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v7, v5, 0x4

    goto :goto_0
.end method

.method private static encode3to4([BII[BI[B)[B
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 216
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    .line 217
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    :cond_3
    ushr-int/lit8 p1, p0, 0x12

    .line 222
    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 223
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 224
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    .line 225
    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    ushr-int/lit8 p2, p0, 0x12

    .line 228
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 229
    aget-byte v1, p5, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 230
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v0

    .line 231
    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    ushr-int/lit8 p2, p0, 0x12

    .line 234
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 235
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 236
    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    .line 237
    aput-byte p1, p3, p4

    return-object p3
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3

    .line 270
    array-length v0, p0

    sget-object v1, Lcom/prime31/util/Base64;->WEBSAFE_ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/prime31/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
