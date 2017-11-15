# $ ->
#   new AvatarCrop()

# class AvatarCrop
#   constructor: ->
#     width = parseInt($('#cropbox').width())
#     height = parseInt($('#cropbox').height())
#     $('#cropbox').Jcrop
#       aspectRatio: 1
#       setSelect: [0, 0, 600, 600]
#       onSelect: @update
#       onChange: @update

#   update: (coords) =>
#     $('#question_crop_x').val(coords.x)
#     $('#question_crop_y').val(coords.y)
#     $('#question_crop_w').val(coords.w)
#     $('#question_crop_h').val(coords.h)
#     @updatePreview(coords)

#   updatePreview: (coords) =>
#     rx = 100 / coords.w
#     ry = 100 / coords.h

#     $('#preview').css
#         width: Math.round(rx * $('#cropbox').width()) + 'px'
#         height: Math.round(ry * $('#cropbox').height()) + 'px'
#         marginLeft: '-' + Math.round(rx * coords.x) + 'px'
#         marginTop: '-' + Math.round(ry * coords.y) + 'px'
